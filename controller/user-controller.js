const bcrypt = require("bcrypt");
const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

// exports.getAllUsers = async (req, res) => {
//     res.send("Get All Users");
// };

exports.register = async (req, res, next) => {
    console.log(req.body);
  try {
    const {password, ...rest} = req.body;
    const hashedPassword = await bcrypt.hash(password, 10);
    const user = await prisma.user.create({
        data: {
            ...rest,
            password: hashedPassword,
        },
        select: {
            id: true,
            email: true,
            username: true,
        },
    });
    res.status(201).json({
        message: "User created",
        data: user,
  });
    console.log(hashedPassword);
  } catch (error) {
    console.log(error);
    next(error);
  }
};