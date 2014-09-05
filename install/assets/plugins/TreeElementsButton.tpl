//<?php
/**
 * TreeElementsButton
 *
 * Add a new treebutton to open elements in a popup or blank page
 *
 * @author    Nicola Lambathakis
 * @category    plugin
 * @version    2.1 RC
 * @license	 http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal    @events OnManagerTreePrerender
 * @internal    @installset base
 * @internal    @modx_category Manager and Admin
 * @internal    @properties  &TargetWindow=Target Window:;list;popup,blank;popup &AwesomeFonts=Use Awesome Fonts icon:;list;no,yes;no &AwesomeFontsHoverColor=Awesome Fonts hover color:;string;FFFFFF &AwesomeElementsFontsIcon=Awesome Fonts icon:;string;fa-list-alt
 */

/**
 * TreeElementsButton RC 2.1
 * author: Nicola Lambathakis http://www.tattoocms.it
 * Add a new treebutton to open elements in a popup or blanck page
 * Event: OnManagerTreePrerender
 * Configuration: &TargetWindow=Target Window:;list;popup,blank;popup &AwesomeFonts=Use Awesome Fonts icon:;list;no,yes;no &AwesomeFontsHoverColor=Awesome Fonts hover color:;string;FFFFFF &AwesomeElementsFontsIcon=Awesome Fonts icon:;string;fa-list-alt
 */

// Run the main code
include($modx->config['base_path'].'assets/plugins/treeelementbutton/treeelementbutton.php');

