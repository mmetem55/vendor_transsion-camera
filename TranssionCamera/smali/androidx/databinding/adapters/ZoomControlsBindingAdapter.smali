.class public Landroidx/databinding/adapters/ZoomControlsBindingAdapter;
.super Ljava/lang/Object;
.source "ZoomControlsBindingAdapter.java"


# annotations
.annotation build Landroidx/databinding/BindingMethods;
    value = {
        .subannotation Landroidx/databinding/BindingMethod;
            attribute = "android:onZoomIn"
            method = "setOnZoomInClickListener"
            type = Landroid/widget/ZoomControls;
        .end subannotation,
        .subannotation Landroidx/databinding/BindingMethod;
            attribute = "android:onZoomOut"
            method = "setOnZoomOutClickListener"
            type = Landroid/widget/ZoomControls;
        .end subannotation
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
