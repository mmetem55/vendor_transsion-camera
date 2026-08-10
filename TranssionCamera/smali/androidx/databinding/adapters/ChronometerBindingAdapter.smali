.class public Landroidx/databinding/adapters/ChronometerBindingAdapter;
.super Ljava/lang/Object;
.source "ChronometerBindingAdapter.java"


# annotations
.annotation build Landroidx/databinding/BindingMethods;
    value = {
        .subannotation Landroidx/databinding/BindingMethod;
            attribute = "android:onChronometerTick"
            method = "setOnChronometerTickListener"
            type = Landroid/widget/Chronometer;
        .end subannotation
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
