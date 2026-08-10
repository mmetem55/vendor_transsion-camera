.class public Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;
.super Ljava/lang/Object;
.source "IShutterUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/IShutterUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShutterUISpec"
.end annotation


# instance fields
.field public idleDrawableId:I

.field public idleSmallDrawableId:I

.field public idleToProcessingDrawableId:I

.field public idleToSmileDrawableId:I

.field public processingDrawableId:I

.field public processingToIdleDrawableId:I

.field public regularToSmallDrawableId:I

.field public smallToRegularDrawableId:I

.field public smallToSmileDrawableId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
