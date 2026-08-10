.class public interface abstract Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;
.super Ljava/lang/Object;
.source "IGoogleLensApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi$LensStatusCallback;,
        Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi$LensStatus;
    }
.end annotation


# static fields
.field public static final LENS_AVAILABLE:I = 0x0

.field public static final LENS_UNAVAILABLE:I = 0x1


# virtual methods
.method public abstract checkLensStatus(Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi$LensStatusCallback;)V
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract startLens(Landroid/app/Activity;)V
.end method
