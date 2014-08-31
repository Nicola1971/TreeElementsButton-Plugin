//<?php
/**
 * TreeElementsButton
 *
 * Add a new treebutton to open elements in a popup or black page
 *
 * @author    Nicola Lambathakis
 * @category    plugin
 * @version    2.0 RC
 * @license	 http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal    @events OnManagerTreePrerender
 * @internal    @installset base
 * @internal    @modx_category Manager and Admin
 * @internal    @properties  &TargetWindow=Target Window:;list;popup,blank;popup &AwesomeFonts=Use Awesome Fonts icon:;list;no,yes;no &AwesomeFontsHoverColor=Awesome Fonts hover color:;string;FFFFFF &AwesomeElementsFontsIcon=Awesome Fonts icon:;string;fa-list-alt
 */

/**
 * TreeElementsButton RC 2.0
 * author: Nicola Lambathakis http://www.tattoocms.it
 * Add a new treebutton to open elements in a popup or black page
 * Event: OnManagerTreePrerender
 * Configuration: &TargetWindow=Target Window:;list;popup,blank;popup &AwesomeFonts=Use Awesome Fonts icon:;list;no,yes;no &AwesomeFontsHoverColor=Awesome Fonts hover color:;string;FFFFFF &AwesomeElementsFontsIcon=Awesome Fonts icon:;string;fa-list-alt
 */

GLOBAL $manager_theme;
$PluginPath = isset($PluginPath) ? $PluginPath : '../assets/plugins/treeelementbutton/';

$TargetWindow = isset($TargetWindow) ? $TargetWindow : 'popup';
$AwesomeFonts = isset($AwesomeFonts) ? $AwesomeFonts : 'no';
$AwesomeFontsHoverColor = isset($AwesomeFontsHoverColor) ? $AwesomeFontsHoverColor : 'FFFFFF';
$AwesomeElementsFontsIcon = isset($AwesomeElementsFontsIcon) ? $AwesomeElementsFontsIcon : 'fa-list-alt';

//button icons and links
$ElementsButtonIconPopup = isset($ElementsButtonIconPopup) ? $ElementsButtonIconPopup : '<a class="TrbuttonElements treeButton" onclick="window.open(\'index.php?a=76\',\'Elements\',\'width=800,height=600,top=\'+((screen.height-600)/2)+\',left=\'+((screen.width-800)/2)+\',toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no\')"><img src="'.$PluginPath.'images/elements-icon.gif" /></a>';

$ElementsButtonAwesomePopup = isset($ElementsButtonAwesomePopup) ? $ElementsButtonAwesomePopup : '<a class="TrbuttonElements" onclick="window.open(\'index.php?a=76\',\'Elements\',\'width=800,height=600,top=\'+((screen.height-600)/2)+\',left=\'+((screen.width-800)/2)+\',toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no\')"><i class="fa '.$AwesomeElementsFontsIcon.' fa-lg"></i></a>';

$ElementsButtonIconBlank = isset($ElementsButtonIconBlank) ? $ElementsButtonIconBlank : '<a class="TrbuttonElements treeButton" href="index.php?a=76" alt="elements" target="_blank"><img src="'.$PluginPath.'images/elements-icon.gif" /></a>';

$ElementsButtonAwesomeBlank = isset($ElementsButtonAwesomeBlank) ? $ElementsButtonAwesomeBlank : '<a class="TrbuttonElements" href="index.php?a=76" alt="elements" target="_blank"><i class="fa '.$AwesomeElementsFontsIcon.' fa-lg"></i></a>';
//styles
$iconstyle = '<style>
	.TrbuttonElements {
	position: absolute;
	left: 186px;
    top: 2px;
	padding-top:4px;
	height:16px;
	width:16px;
	cursor: pointer;}
	</style>';
$awesomestyle = '<style>
	.TrbuttonElements i{
	position: absolute;
	left: 186px;
    top: 3px;
	padding-top:4px;
	height:16px;
	width:16px;
	cursor: pointer;}
	a.TrbuttonElements i:hover {color: #'.$AwesomeFontsHoverColor.'!important;)
	</style>';
// run event
$e = &$modx->Event;
$output ='';

switch($e->name) {
    case 'OnManagerTreePrerender':
	// buttons
if ($TargetWindow == popup) {
	if ($AwesomeFonts == no) {
	$output = '
	'.$iconstyle.'
    '.$ElementsButtonIconPopup.'
    ';
	}
	if ($AwesomeFonts == yes) {
	$output = '
	'.$awesomestyle.'
    '.$ElementsButtonAwesomePopup.'
    ';
}
if ($TargetWindow == blank) {
	if ($AwesomeFonts == no) {
	$output = '
	'.$iconstyle.'
    '.$ElementsButtonIconBlank.'
    ';
	}
	if ($AwesomeFonts == yes) {
	$output = '
	'.$awesomestyle.'
    '.$ElementsButtonAwesomeBlank.'
    ';
	}
  }
}
 	//end button

    break;
    default:
        $output = '';
    break;
}
$e->output($output);

return;