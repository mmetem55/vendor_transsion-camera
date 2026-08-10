.class public Landroidx/databinding/adapters/TabWidgetBindingAdapter;
.super Ljava/lang/Object;
.source "TabWidgetBindingAdapter.java"


# annotations
.annotation build Landroidx/databinding/BindingMethods;
    value = {
        .subannotation Landroidx/databinding/BindingMethod;
            attribute = "android:divider"
            method = "setDividerDrawable"
            type = Landroid/widget/TabWidget;
        .end subannotation,
        .subannotation Landroidx/databinding/BindingMethod;
            attribute = "android:tabStripEnabled"
            method = "setStripEnabled"
            type = Landroid/widget/TabWidget;
        .end subannotation,
        .subannotation Landroidx/databinding/BindingMethod;
            attribute = "android:tabStripLeft"
            method = "setLeftStripDrawable"
            type = Landroid/widget/TabWidget;
        .end subannotation,
        .subannotation Landroidx/databinding/BindingMethod;
            attribute = "android:tabStripRight"
            method = "setRightStripDrawable"
            type = Landroid/widget/TabWidget;
        .end subannotation
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
