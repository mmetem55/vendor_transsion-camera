.class public Landroidx/databinding/adapters/SpinnerBindingAdapter;
.super Ljava/lang/Object;
.source "SpinnerBindingAdapter.java"


# annotations
.annotation build Landroidx/databinding/BindingMethods;
    value = {
        .subannotation Landroidx/databinding/BindingMethod;
            attribute = "android:popupBackground"
            method = "setPopupBackgroundDrawable"
            type = Landroid/widget/Spinner;
        .end subannotation
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
