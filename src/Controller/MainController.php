<?php
/**
 * Created by PhpStorm.
 * User: smartnet
 * Date: 21.12.17
 * Time: 1:48
 */

namespace App\Controller;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class MainController extends Controller
{

    /**
     * @Route("/", name="index")
     */
    public function index() {

        return $this->render('main/index.html.twig');
    }

    /**
     * @Route("/new", name="new")
     */
    public function newPage() {

        return $this->render('main/new.html.twig');
    }

}