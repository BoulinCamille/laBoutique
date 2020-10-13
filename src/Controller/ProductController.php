<?php

namespace App\Controller;

use App\Entity\Notice;
use App\Entity\Product;
use App\Form\NoticeType;
use App\Repository\ProductRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\ParameterBag;

class ProductController extends AbstractController
{


    /**
     * @Route("/", name="products")
     */
    public function getProducts(ProductRepository $repo)
    {
        $products = $repo->findAll();

        return $this->render("product/products.html.twig", ['products' => $products]);
    }

    /**
     * @Route("/products/{id}", name="product_show")
     */
    public function showProduct($id, Product $product = null, Request $request, EntityManagerInterface $manager)
    {   
        $repo = $this->getDoctrine()->getRepository(Product::class);
        $product = $repo->find($id);

        $notice = new Notice();
        $noticeForm = $this->createForm(NoticeType::class, $notice);

        $noticeForm->handleRequest($request);


        if ($noticeForm->isSubmitted() && $noticeForm->isValid())
        {
            $notice->setCreatedAt(new \DateTime());
            $notice->setAuthor($this->getUser()->getUsername());
            $notice->setProduct($product);

            $manager->persist($notice);
            $manager->flush();
        }
        return $this->render('product/show.html.twig', ['product' => $product, 'form' => $noticeForm->createView()]);
    }

    /**
     * @Route("/continueShopping", name="continue_shopping")
     */
    public function continueShopping()
    {
        return $this->redirectToRoute('products');
    }

    /**
     * @Route("/search", name="product_search")
     */
    public function search(Request $request, ProductRepository $repo)
    {  
        $categorySearched = $request->request->get('category');
     
        $products = $repo->findBy(['category' => $categorySearched]);

        return $this->render('product/search.html.twig', ['products' => $products]);
    }
}
