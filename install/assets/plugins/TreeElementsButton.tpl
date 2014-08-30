//<?php
/**
 * TreeElementsButton
 *
 * Add a new treebutton to open elements in a popup or black page
 *
 * @author    Nicola Lambathakis
 * @category    plugin
 * @version    1.0 RC
 * @license	 http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal    @events OnManagerTreePrerender
 * @internal    @installset base
 * @internal    @modx_category Manager and Admin
 * @internal    @properties  &TargetWindow=Target Window:;list;popup,blank;popup; &AwesomeFonts=Use Awesome Fonts icon:;list;no,yes;no; &AwesomeFontsIcon=Awesome Fonts icon:;string;fa-list; &AwesomeFontsHoverColor=Awesome Fonts hover color:;string;FFFFFF;
 */

/**
 * TreeElementsButton RC 1.0
 *
 * Add a new treebutton to open elements in a popup or black page
 * Event: OnManagerTreePrerender
 * Configuration: &TargetWindow=Target Window:;list;popup,blank;popup; &AwesomeFonts=Use Awesome Fonts icon:;list;no,yes;no; &AwesomeFontsIcon=Awesome Fonts icon:;string;fa-list; &AwesomeFontsHoverColor=Awesome Fonts hover color:;string;FFFFFF;
 */

GLOBAL $manager_theme;
$TargetWindow = isset($TargetWindow) ? $TargetWindow : 'popup';
$AwesomeFonts = isset($AwesomeFonts) ? $AwesomeFonts : 'no';
$AwesomeFontsHoverColor = isset($AwesomeFontsHoverColor) ? $AwesomeFontsHoverColor : 'FFFFFF';
$AwesomeFontsIcon = isset($AwesomeFontsIcon) ? $AwesomeFontsIcon : 'fa-list';
$e = &$modx->Event;
$output ='';

switch($e->name) {
    case 'OnManagerTreePrerender':
if ($TargetWindow == popup) {
	if ($AwesomeFonts == no) {
	$output = '
	<style>
	.TrbuttonElements {
	position: absolute;
	left: 186px;
    top: 2px;
	padding-top:4px;
	height:16px;
	cursor: pointer;}
	</style>
<a class="TrbuttonElements treeButton" onclick="window.open(\'index.php?a=76\',\'gener\',\'width=800,height=600,top=\'+((screen.height-600)/2)+\',left=\'+((screen.width-800)/2)+\',toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no\')"><img src="media/style/'.$manager_theme.'/images/icons/comment.gif"
	style="width:16px;height:16px" /></a>';
	}
	if ($AwesomeFonts == yes) {
	$output = '
	<style>
	.TrbuttonElements i{
	position: absolute;
	left: 186px;
    top: 3px;
	padding-top:4px;
	height:16px;
	cursor: pointer;}
	a.TrbuttonElements i:hover {color: #'.$AwesomeFontsHoverColor.'!important;)
	</style>
<a class="TrbuttonElements" onclick="window.open(\'index.php?a=76\',\'gener\',\'width=800,height=600,top=\'+((screen.height-600)/2)+\',left=\'+((screen.width-800)/2)+\',toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no\')"><i class="fa '.$AwesomeFontsIcon.' fa-lg"></i></a>';
	}
}
if ($TargetWindow == blank) {
	if ($AwesomeFonts == no) {
	$output = '
	<style>
	.TrbuttonElements {
	position: absolute;
	left: 186px;
    top: 2px;
	padding-top:4px;
	height:16px;
	cursor: pointer;}
	</style>
<a class="TrbuttonElements treeButton" href="index.php?a=76" alt="elements" target="_blank"><img src="media/style/'.$manager_theme.'/images/icons/comment.gif" style="width:16px;height:16px"/></a>';
	}
	if ($AwesomeFonts == yes) {
	$output = '
	<style>
	.TrbuttonElements i{
	position: absolute;
	left: 186px;
    top: 3px;
	padding-top:4px;
	height:16px;
	cursor: pointer;}
	a.TrbuttonElements i:hover {color: #'.$AwesomeFontsHoverColor.'!important;)
	</style>
<a class="TrbuttonElements" href="index.php?a=76" alt="elements" target="_blank"><i class="fa '.$AwesomeFontsIcon.' fa-lg"></i></a>';
	}
}
    break;

    default:
        $output = '';
    break;
}

$e->output($output);

return;