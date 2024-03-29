import 'package:flutter/material.dart';
import 'package:tryout/builder/check_list.dart';
import './calendar.dart';
import './pattern.dart';
import './std_pattern.dart';
import './special_pattern.dart';
import './tap_list_item.dart';
import '../resources/basic_resources.dart';
import '../resources/fonts.dart';
import '../resources/icons.dart';
import './item_search.dart';
import 'package:json_theme/json_theme.dart';
import './form_pattern.dart';

final List<String> processEvent = ["_processEvent", "_inMap", "_value"];
final List<String> tap = ["_onTap", "_processEvent", "_inMap", "_value"];

BoxDecoration? getDecoration(String image) {
  return ThemeDecoder.decodeBoxDecoration({
    "image": {
      "image": {"assetName": image, "type": "asset"},
      "fit": "cover"
    }
  }, validate: false);
}

ProcessPattern getColumnPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_children",
    "_crossAxisAlignment",
    "_mainAxisAlignment",
    "_mainAxisSize",
    "_textBaseline",
    "_textDirection",
    "_verticalDirection"
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return ColumnPattern(map);
}

ProcessPattern getRowPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_children",
    "_crossAxisAlignment",
    "_mainAxisAlignment",
    "_mainAxisSize",
    "_textBaseline",
    "_textDirection",
    "_verticalDirection"
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return RowPattern(map);
}

ProcessPattern getWrapPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_children",
    "_crossAxisAlignment",
    "_direction",
    "_runAlignment",
    "_alignment",
    "_runSpacing",
    "_spacing",
    "_textDirection",
    "_verticalDirection",
    "_clipBehavior"
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return WrapPattern(map);
}

ProcessPattern getScaffolPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_key",
    "_body",
    "_appBar",
    "_bottomSheet",
    "_bottomNavigationBar",
    "_drawer",
    "_textDirection",
    "_endDrawer",
    "_backgroundColor",
    "_drawerDragStartBehavior",
    "_endDrawerEnableOpenDragGesture",
    "_primary",
    "_extendBody",
    "_extendBodyBehindAppBar",
    "_floatingAction",
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return ScaffolPattern(map);
}

ProcessPattern getAppBarPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_actions",
    "_actionsIconTheme",
    "_automaticallyImplyLeading",
    "_backgroundColor",
    "_bottom",
    "_bottomOpacity",
    "_centerTitle",
    "_elevation",
    "_excludeHeaderSemantics",
    "_flexibleSpace",
    "_leading",
    "_leadingWidth",
    "_primary",
    "_shadowColor",
    "_shape",
    "_title",
    "_titleSpacing",
    "_titleTextStyle",
    "_textStyle",
    "_toolbarHeight",
    "_toolbarOpacity"
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return AppBarPattern(map);
}

ProcessPattern getTextPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_text",
    "_locale",
    "_maxLines",
    "_textOverflow",
    "_semanticsLabel",
    "_softWrap",
    "_strutStyle",
    "_textStyle",
    "_textAlign",
    "_textDirection",
    "_textHeightBehavior",
    "_textScaleFactor",
    "_textWidthBasis"
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return TextPattern(map);
}

ProcessPattern getImageAssetPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_name",
    "_actionsIconTheme",
    "_scale",
    "_width",
    "_height",
    "_color",
    "_colorBlendMode",
    "_boxFit",
    "_alignment",
    "_repeat",
    "_centerSlice",
    "_matchTextDirection",
    "_filterQuality",
    "_image"
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return ImageAssetPattern(map);
}

ProcessPattern getSVGAssetPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = ["_name", "_height"];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return SVGAssetPattern(map);
}

ProcessPattern getStackPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_children",
    "_alignment",
    "_clipBehavior",
    "_stackFit",
    "_textDirection"
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return StackPattern(map);
}

ProcessPattern getContainerPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_key",
    "_child",
    "_color",
    "_alignment",
    "_clipBehavior",
    "_boxConstraints",
    "_decoration",
    "_margin",
    "_padding",
    "_transform",
    "_width",
    "_height"
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return ContainerPattern(map);
}

ProcessPattern getSingleChildScrollViewPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_child",
    "_controller",
    "_dragStartBehavior",
    "_clipBehavior",
    "_scrollPhysics",
    "_primary",
    "_restorationId",
    "_padding",
    "_reverse",
    "_scrollDirection"
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return SingleChildScrollViewPattern(map);
}

ProcessPattern getGridViewPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_scrollDirection",
    "_reverse",
    "_controller",
    "_primary",
    "_physics",
    "_shrinkWrap",
    "_padding",
    "_crossAxisCount",
    "_mainAxisSpacing",
    "_crossAxisSpacing",
    "_childAspectRatio",
    "_addAutomaticKeepAlives",
    "_addRepaintBoundaries",
    "_cacheExtent",
    "_children",
    "_semanticChildCount",
    "_dragStartBehavior",
    "_keyboardDismissBehavior",
    "_restorationId",
    "_clipBehavior"
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return GridViewPattern(map);
}

ProcessPattern getIndexedStackPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_children",
    "_notifier",
    "_alignment",
    "_clipBehavior",
    "_sizing",
    "_textDirection"
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return IndexedStackPattern(map);
}

ProcessPattern getValueStackPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_notifier",
    "_alignment",
    "_clipBehavior",
    "_stackFit",
    "_textDirection"
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return ValueStackPattern(map);
}

ProcessPattern getCenterPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = ["_child", "_heightFactor", "_widthFactor"];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return CenterPattern(map);
}

ProcessPattern getTextFieldPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_autocorrect",
    "_autofocus",
    "_textController",
    "_enabled",
    "_textStyle",
    "_showCursor",
    "_maxLines",
    "_expands",
    "_onSubmitted",
    "_keyboardType",
    "_inputBorder",
    "_icon",
    "_hintText",
    "_hintStyle",
    "_labelText",
    "_labelStyle",
    "_prefixIcon",
    "_suffixIcon",
    "_filled",
    "_fillColor",
    "_padding"
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return TextFieldPattern(map);
}

ProcessPattern getListViewPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_key",
    "_scrollDirection",
    "_reverse",
    "_controller",
    "_primary",
    "_physics",
    "_shrinkWrap",
    "_padding",
    "_addAutomaticKeepAlives",
    "_addRepaintBoundaries",
    "_cacheExtent",
    "_children",
    "_semanticChildCount",
    "_dragStartBehavior",
    "_keyboardDismissBehavior",
    "_restorationId",
    "_clipBehavior"
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return ListViewPattern(map);
}

ProcessPattern getSizedBoxPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = ["_child", "_width", "_height"];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return SizedBoxPattern(map);
}

ProcessPattern getDraggablePattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = ["_child", "_feedback", "_childWhenDragging", "_data"];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return DraggablePattern(map);
}

ProcessPattern getDragTargetPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = ["_target", "_dropAction", "_key"];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return DragTargetPattern(map);
}

ProcessPattern getImageBannerPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {
    "_name": pmap["_name"],
    "_height": pmap["_height"]
  };
  return ImageBannerPattern(map);
}

ProcessPattern getInTextFieldPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_autocorrect",
    "_autofocus",
    "_focusNode",
    "_textController",
    "_enabled",
    "_textStyle",
    "_showCursor",
    "_maxLines",
    "_expands",
    "_onSubmitted",
    "_keyboardType",
    "_inputBorder",
    "_icon",
    "_hintText",
    "_hintStyle",
    "_labelText",
    "_labelStyle",
    "_prefixIcon",
    "_suffixIcon",
    "_filled",
    "_fillColor",
    "_padding",
    "_key",
    "_complete",
    "_clear",
    "_incomplete",
    "_retainFocus",
    "_textNoti",
    "_isState",
    "_clear"
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  map["_parent"] = pmap;
  return InTextFieldPattern(map);
}

ProcessPattern getTapItemPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_child",
  ];
  nl.addAll(tap);
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return TapItemPattern(map);
}

ProcessPattern getBadgePattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = ["_child", "_badgeContext", "_badgeColor", "_showBadge"];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return BadgePattern(map);
}

ProcessPattern getAlignPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = ["_child", "_alignment", "_heightFactor", "_widthFactor"];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return AlignPattern(map);
}

ProcessPattern getClipRRectPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {
    "_child": pmap["_child"],
    "_borderRadius": pmap["_borderRadius"]
  };
  return ClipRRectPattern(map);
}

ProcessPattern getCardPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_child",
    "_cardColor",
    "_shadowColor",
    "_clipBehavior",
    "_elevation",
    "_shape",
    "_margin",
    "_borderOnForeground",
    "_cardRadius"
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return CardPattern(map);
}

ProcessPattern getPaddingPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {
    "_child": pmap["_child"],
    "_padding": pmap["_padding"]
  };
  return PaddingPattern(map);
}

ProcessPattern getExpandedPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {"_child": pmap["_child"], "_flex": pmap["_flex"]};
  return ExpandedPattern(map);
}

ProcessPattern getFittedBoxPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = ["_child", "_fit", "_alignment", "_clip"];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return FittedBoxPattern(map);
}

ProcessPattern getSizedBoxExpandPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {"_child": pmap["_child"]};
  return SizedBoxExpandPattern(map);
}

ProcessPattern getScrollLayoutPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {"_child": pmap["_child"]};
  return ScrollLayoutPattern(map);
}

ProcessPattern getDottedBorderPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_child",
    "_radius",
    "_dashPattern",
    "_strokeWidth",
    "_dottedColor"
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return DottedBorderPattern(map);
}

// ProcessPattern getContextPattern(Map<String, dynamic> pmap) {
//   Map<String, dynamic> map = {
//     "_child": pmap["_child"],
//     "_context": pmap["_context"]
//   };
//   map["_parent"] = pmap;
//   return ContextPattern(map);
// }

ProcessPattern getInteractiveViewerPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_child",
    "_scaleEnabled",
    "_panEnabled",
    "_minScale",
    "_maxScale"
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return InteractiveViewerPattern(map);
}

ProcessPattern getWillPopScopeActionsPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {
    "_child": pmap["_child"],
    "_backActions": pmap["_backActions"]
  };
  return WillPopScopeActionsPattern(map);
}

ProcessPattern getColorButtonPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_child",
    "_btnBRadius",
    "_beginColor",
    "_endColor",
    "_color",
    "_borderColor",
    "_borderWidth",
    "_noShadow",
    "_cbAlignment",
    "_height",
    "_width",
    "_gradient",
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return ColorButtonPattern(map);
}

/* ProcessPattern getSvgPaintPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_svgPaintNoti",
    "_shapes",
    "_confirmNoti",
    "_selPaint",
    "_ansPaint",
    "_showSelLabel",
    "_ansIndex",
    "_offsetWidth",
    "_offsetHeight",
    "_boxWidth",
    "_boxHeight",
    "_background",
    "_selIndex",
    "_selLabel"
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  map["_parent"] = pmap;
  return SvgPaintPattern(map);
} */

ProcessPattern getIconPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {
    "_icon": pmap["_icon"],
    "_iconSize": pmap["_iconSize"],
    "_iconColor": pmap["_iconColor"]
  };
  return IconPattern(map);
}

ProcessPattern getIconButtonPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_icon",
    "_iconSize",
    "_iconColor",
    "_tapAction",
    "_key",
    "_padding",
  ];
  nl.addAll(tap);
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return IconButtonPattern(map);
}

ProcessPattern getFlexiblePattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {"_fit": pmap["_fit"], "_flex": pmap["_flex"]};
  return FlexiblePattern(map);
}

ProcessPattern getOpacityPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {
    "_child": pmap["_child"],
    "_opacity": pmap["_opacity"]
  };
  return OpacityPattern(map);
}

ProcessPattern getSearchButtonPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {
    "_itemList": pmap["_itemList"],
    "_clear": pmap["_clear"],
    "_searchIcon": pmap["_searchIcon"],
    "_searchDelegate": pmap["_searchDelegate"],
    "_highlightColor": pmap["_highlightColor"],
    "_textStyle": pmap["_textStyle"],
  };
  return SearchButtonPattern(map);
}

ProcessPattern getIconTextPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_textStyle",
    "_text",
    "_icon",
    "_iconSize",
    "_iconColor",
    "_highlightColor",
    "_mainAxisAlignment",
    "_gap",
    "_horiz",
    "_hoverColor",
    "_key",
    "_tapAction",
  ];
  nl.addAll(tap);
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  if (pmap["_bar"] != null) {
    map["_iconSize"] = 20.0 * sizeScale;
    if (map["_iconColor"] == null) {
      map["_iconColor"] = const Color(0xFF00344F);
    }
    if (map["_textStyle"] == null) {
      map["_textStyle"] = iconSmallTextStyle;
    }
  }
  return IconTextPattern(map);
}

ProcessPattern getVisiblePattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {
    "_child": pmap["_child"],
    "_valueName": pmap["_valueName"]
  };
  return VisiblePattern(map);
}

ProcessPattern getObxPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {
    "_child": pmap["_child"],
    "_valueName": pmap["_valueName"],
    "_valueKey": pmap["_valueKey"],
  };
  return ObxPattern(map);
}

ProcessPattern getRichTextPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {
    "_textSpan": pmap["_textSpan"],
    "_textAlign": pmap["_textAlign"],
  };
  return RichTextPattern(map);
}

ProcessPattern getOverflowBoxPatternn(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {
    "_child": pmap["_child"],
    "_alignment": pmap["_alignment"],
    "_height": pmap["_height"],
    "_width": pmap["_width"],
  };
  return OverflowBoxPattern(map);
}

ProcessPattern getObxProcessPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {
    "_processName": pmap["_processName"],
  };
  return ObxProcessPattern(map);
}

ProcessPattern getPositionedPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_child",
    "_top",
    "_bottom",
    "_left",
    "_right",
    "_height",
    "_width",
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return PositionedPattern(map);
}

ProcessPattern getPageViewPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_children",
    "_pageNoti",
    "_pageController",
    "_scrollDirection",
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return PageViewPattern(map);
}

ProcessPattern getPageBarPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_inxIcon",
    "_nonInxIcon",
    "_pageNoti",
    "_pageController",
    "_totalPages",
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return PageBarPattern(map);
}

ProcessPattern getTapListItemPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_child",
    "_direction",
    "_reverse",
    "_controller",
    "_physics",
    "_shrinkWrap",
    "_padding",
    "_crossAxisCount",
    "_mainAxisSpacing",
    "_crossAxisSpacing",
    "_childAspectRatio",
    "_childPattern",
    "_childMap",
    "_itemRef"
  ];
  nl.addAll(tap);
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return TapListItemPattern(map);
}

ProcessPattern getListTilePattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_key",
    "_leading",
    "_title",
    "_subtitle",
    "_trailing",
    "_isThreeLine",
    "_selected",
    "_selectedColor",
    "_selectedTileColor",
    "_iconColor",
    "_textColor",
    "_tileColor",
    "_contentPadding",
    "_enabled",
    "_focusColor",
    "_hoverColor",
    "_autofocus",
    "_onLongPress",
    "_tapAction",
    "_leadingWidth",
  ];
  nl.addAll(tap);
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return ListTilePattern(map);
}

ProcessPattern getPagingPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_direction",
    "_physics",
    "_shrinkWrap",
    "_padding",
    "_childPattern",
    "_childMap",
    "_refreshController",
    "_dataCache",
    "_expandable",
    "_expandPattern",
    "_expandMap",
    "_quilted",
  ];
  nl.addAll(tap);
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return PagingPattern(map);
}

ProcessPattern getDividerPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_color",
    "_endIndent",
    "_indent",
    "_height",
    "_thickness",
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return DividerPattern(map);
}

ProcessPattern getDropdownButtonPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_type",
    "_value",
    "_items",
    "_cacheName",
    "_rxName",
    "_fsmName",
    "_hint",
    "_textStyle",
    "_icon",
    "_iconSize",
    "_processEvent",
    "_inMap",
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return DropdownButtonPattern(map);
}

ProcessPattern getObxOpacityPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {
    "_child": pmap["_child"],
    "_rxName": pmap["_rxName"]
  };
  return ObxOpacityPattern(map);
}

ProcessPattern getProgressTextPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {
    "_text": pmap["_text"],
    "_textStyle": pmap["_textStyle"],
  };
  return ProgressTextPattern(map);
}

ProcessPattern getTabColumnPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {
    "_tabs": pmap["_tabs"],
    "_children": pmap["_children"],
    "_key": pmap["_key"],
    "_index": pmap["_index"],
    "_inxName": pmap["_inxName"]
  };
  return TabColumnPattern(map);
}

ProcessPattern getDrawerPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {
    "_child": pmap["_child"],
    "_backgroundColor": pmap["_backgroundColor"],
    "_width": pmap["_width"],
  };
  return DrawerPattern(map);
}

ProcessPattern getBubblePattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_bubbleBox",
    "_align",
    "_bubbleHeight",
    "_boxWidth",
    "_boxAlign",
    "_boxHeight",
    "_arrowAlign",
    "_bubbleArrow",
    "_mainAxisAlignment"
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return BubblePattern(map);
}

ProcessPattern getTextIconRow(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_key",
    "_text",
    "_textStyle",
    "_icon",
    "_iconSize",
    "_iconColor",
    "_iconFirst",
    "_fitted",
  ];
  nl.addAll(tap);
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return TextIconRowPattern(map);
}

ProcessPattern getTextIconList(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_titleTextStyle",
    "_textStyle",
    "_iconSize",
    "_iconFirst",
    "_fitted",
    "_entity",
    "_object",
    "_attrList",
    "_rinfo",
    "_item",
    "_actions",
    "_split",
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  TextIconListPattern pp = TextIconListPattern(map);
  pp.setChildren();
  return pp;
}

ProcessPattern getFormPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {
    "_formFields": pmap["_formFields"],
    "_formData": pmap["_formData"],
    "_title": pmap["_title"],
  };
  return FormPattern(map);
}

ProcessPattern getFloatingActionPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_child",
    "_bgColor",
    "_iconSize",
    "_fgColor",
    "_icon",
    "_iconColor",
  ];
  nl.addAll(tap);
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return FloatingActionPattern(map);
}

ProcessPattern getSwitchPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_onOff",
  ];
  nl.addAll(tap);
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return SwitchPattern(map);
}

ProcessPattern getCupertinoSwitchPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_switch",
    "_trackColor",
    "_activeColor",
    "_tapAction",
    "_processEvent",
    "_inMap",
    "_rxName",
  ];
  nl.addAll(tap);
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return CupertinoSwitchPattern(map);
}

ProcessPattern getCircleAvatarPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_child",
    "_radius",
    "_backgroundColor",
    "_image",
  ];
  nl.addAll(tap);
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return CircleAvatarPattern(map);
}

ProcessPattern getObxDropdownPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_type",
    "_value",
    "_items",
    "_rxName",
    "_hint",
    "_textStyle",
    "_icon",
    "_iconSize",
    "_processEvent",
    "_inMap",
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return ObxDropdownPattern(map);
}

ProcessPattern getElevatedButtonPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_child",
  ];
  nl.addAll(tap);
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return ElevatedButtonPattern(map);
}

ProcessPattern getQRCodeGenPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {
    "_text": pmap["_text"],
    "_width": pmap["_width"],
    "_height": pmap["_height"],
    "_color": pmap["_color"],
  };

  return QRCodeGenPattern(map);
}

ProcessPattern getCalendarPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {
    "_text": pmap["_text"],
    "_width": pmap["_width"],
    "_height": pmap["_height"],
    "_color": pmap["_color"],
  };

  return CalendarPattern(map);
}

ProcessPattern getWrapTextPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_text",
    "_locale",
    "_maxLines",
    "_textOverflow",
    "_semanticsLabel",
    "_softWrap",
    "_strutStyle",
    "_textStyle",
    "_textAlign",
    "_textDirection",
    "_textHeightBehavior",
    "_textScaleFactor",
    "_textWidthBasis"
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  return WrapTextPattern(map);
}

ProcessPattern getCheckBoxPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_activeColor",
    "_checkColor",
    "_fillColor",
    "_actionColor",
    "_shape",
    "_side",
  ];
  nl.addAll(processEvent);
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  map["_parent"] = pmap;
  return CheckBoxPattern(map);
}

ProcessPattern getCheckListPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_rxName",
    "_data",
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  map["_parent"] = pmap;
  return CheckListPattern(map);
}

ProcessPattern getImageFitContainerPattern(Map<String, dynamic> pmap) {
  Map<String, dynamic> map = {};
  List<String> nl = [
    "_image",
    "_child",
    "_boxFit",
    "_width",
    "_height",
  ];
  for (String s in nl) {
    dynamic d = pmap[s];
    if (d != null) {
      map[s] = d;
    }
  }
  map["_parent"] = pmap;
  return ImageFitContainerPattern(map);
}

final Map<String, Function> getPrimePattern = {
  "Align": getAlignPattern,
  "AppBar": getAppBarPattern,
  "Badge": getBadgePattern,
  "Bubble": getBubblePattern,
  "Calendar": getCalendarPattern,
  "Card": getCardPattern,
  "Center": getCenterPattern,
  "CheckBox": getCheckBoxPattern,
  "CheckList": getCheckListPattern,
  "CircleAvatar": getCircleAvatarPattern,
  "ClipRRect": getClipRRectPattern,
  "ColorButton": getColorButtonPattern,
  "Column": getColumnPattern,
  "Container": getContainerPattern,
  "CupertinoSwitch": getCupertinoSwitchPattern,
  "Divider": getDividerPattern,
  "DottedBorder": getDottedBorderPattern,
  "Draggable": getDraggablePattern,
  "Drawer": getDrawerPattern,
  "DragTarget": getDragTargetPattern,
  "DropdownButton": getDropdownButtonPattern,
  "ElevatedButton": getElevatedButtonPattern,
  "EntityForm": getEntityFormPattern,
  "Form": getFormPattern,
  "Expanded": getExpandedPattern,
  "FittedBox": getFittedBoxPattern,
  "Flexible": getFlexiblePattern,
  "FloatingAction": getFloatingActionPattern,
  "GridView": getGridViewPattern,
  "Icon": getIconPattern,
  "IconButton": getIconButtonPattern,
  "IconText": getIconTextPattern,
  "ImageAsset": getImageAssetPattern,
  "ImageFitContainer": getImageFitContainerPattern,
  "ImageBanner": getImageBannerPattern,
  "IndexedStack": getIndexedStackPattern,
  "InteractiveViewer": getInteractiveViewerPattern,
  "InTextField": getInTextFieldPattern,
  "ListTile": getListTilePattern,
  "ListView": getListViewPattern,
  "MenuBubble": getMenuBubble,
  "Obx": getObxPattern,
  "ObxDropdown": getObxDropdownPattern,
  "ObxOpacity": getObxOpacityPattern,
  "ObxProcess": getObxProcessPattern,
  "Opacity": getOpacityPattern,
  "OverflowBox": getOverflowBoxPatternn,
  "Padding": getPaddingPattern,
  "Paging": getPagingPattern,
  "PageView": getPageViewPattern,
  "PageBar": getPageBarPattern,
  "Positioned": getPositionedPattern,
  "ProgressText": getProgressTextPattern,
  "QRCodeGen": getQRCodeGenPattern,
  "RichText": getRichTextPattern,
  "Row": getRowPattern,
  "Scaffold": getScaffolPattern,
  "ScrollLayout": getScrollLayoutPattern,
  "SearchButton": getSearchButtonPattern,
  "SingleChildScrollView": getSingleChildScrollViewPattern,
  "SizedBox": getSizedBoxPattern,
  "SizedBoxExpand": getSizedBoxExpandPattern,
  "Stack": getStackPattern,
  "SVGAsset": getSVGAssetPattern,
  "Switch": getSwitchPattern,
  "TabColumn": getTabColumnPattern,
  "TapItem": getTapItemPattern,
  "TapListItem": getTapListItemPattern,
  "Text": getTextPattern,
  "TextField": getTextFieldPattern,
  "TextIconList": getTextIconList,
  "TextIconRow": getTextIconRow,
  "Visible": getVisiblePattern,
  "Wrap": getWrapPattern,
  "WrapText": getWrapTextPattern,
};
