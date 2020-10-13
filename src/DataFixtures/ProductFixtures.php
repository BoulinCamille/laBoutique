<?php

namespace App\DataFixtures;

use App\Entity\Notice;
use App\Entity\Product;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;

class ProductFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {   
        $faker = \Faker\Factory::create();
        
        $content = join($faker->paragraphs(2));


        for($i = 0; $i < 10; $i++)
        {
            $product = new Product();
            $product->setName($faker->word)
                ->setDescription($content)
                ->setPrice($faker->randomFloat)
                ->setCreatedAt($faker->dateTime)
                ->setImage($faker->imageUrl)
                ->setCategory($faker->word);
            $manager->persist($product);

            for ($j = 0; $j < rand(3, 9); $j++) {
                $notice = new Notice();
                $notice->setAuthor($faker->name)
                    ->setContent($faker->paragraph)
                    ->setCreatedAt($faker->dateTime)
                    ->setProduct($product);
                $manager->persist($notice);
            }
        }




        $manager->flush();
    }
}
