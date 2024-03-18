-- CreateTable
CREATE TABLE `User` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `is_admin` BOOLEAN NOT NULL,
    `created_at` DATETIME(3) NOT NULL,
    `updated_at` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Profile` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `profile_image` VARCHAR(191) NOT NULL,
    `userId` INTEGER NOT NULL,
    `glove_id` INTEGER NOT NULL,
    `shoe_id` INTEGER NOT NULL,
    `grip_id` INTEGER NOT NULL,
    `driver_head_id` INTEGER NOT NULL,
    `driver_shaft_id` INTEGER NOT NULL,
    `iron_head_id` INTEGER NOT NULL,
    `iron_shaft_id` INTEGER NOT NULL,
    `ball_id` INTEGER NOT NULL,
    `created_at` DATETIME(3) NOT NULL,
    `updated_at` DATETIME(3) NOT NULL,

    UNIQUE INDEX `Profile_userId_key`(`userId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Glove` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `glove_image` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `water_proof` BOOLEAN NOT NULL,
    `type` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Shoe` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `shoe_image` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `water_proof` BOOLEAN NOT NULL,
    `boa` BOOLEAN NOT NULL,
    `spike` BOOLEAN NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Grip` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `grip_image` VARCHAR(191) NOT NULL,
    `size` VARCHAR(191) NOT NULL,
    `type` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `DriverHead` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `brand` VARCHAR(191) NOT NULL,
    `model` VARCHAR(191) NOT NULL,
    `driver_image` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `isforgive` BOOLEAN NOT NULL,
    `islowspin` BOOLEAN NOT NULL,
    `isadjust` BOOLEAN NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `IronHead` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `brand` VARCHAR(191) NOT NULL,
    `model` VARCHAR(191) NOT NULL,
    `iron_image` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `isforgive` BOOLEAN NOT NULL,
    `isforged` BOOLEAN NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Shaft` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `brand` VARCHAR(191) NOT NULL,
    `model` VARCHAR(191) NOT NULL,
    `shaft_image` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `flex` VARCHAR(191) NOT NULL,
    `launch` VARCHAR(191) NOT NULL,
    `spin` VARCHAR(191) NOT NULL,
    `weight` VARCHAR(191) NOT NULL,
    `type` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Ball` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `ball_image` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `spin` VARCHAR(191) NOT NULL,
    `type` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Article` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) NOT NULL,
    `body` VARCHAR(191) NOT NULL,
    `created_at` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Profile` ADD CONSTRAINT `Profile_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Profile` ADD CONSTRAINT `Profile_glove_id_fkey` FOREIGN KEY (`glove_id`) REFERENCES `Glove`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Profile` ADD CONSTRAINT `Profile_shoe_id_fkey` FOREIGN KEY (`shoe_id`) REFERENCES `Shoe`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Profile` ADD CONSTRAINT `Profile_grip_id_fkey` FOREIGN KEY (`grip_id`) REFERENCES `Grip`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Profile` ADD CONSTRAINT `Profile_driver_head_id_fkey` FOREIGN KEY (`driver_head_id`) REFERENCES `DriverHead`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Profile` ADD CONSTRAINT `Profile_iron_head_id_fkey` FOREIGN KEY (`iron_head_id`) REFERENCES `IronHead`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Profile` ADD CONSTRAINT `Profile_driver_shaft_id_fkey` FOREIGN KEY (`driver_shaft_id`) REFERENCES `Shaft`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Profile` ADD CONSTRAINT `Profile_iron_shaft_id_fkey` FOREIGN KEY (`iron_shaft_id`) REFERENCES `Shaft`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Profile` ADD CONSTRAINT `Profile_ball_id_fkey` FOREIGN KEY (`ball_id`) REFERENCES `Ball`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
