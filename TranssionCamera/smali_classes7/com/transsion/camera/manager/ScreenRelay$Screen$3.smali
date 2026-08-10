.class final enum Lcom/transsion/camera/manager/ScreenRelay$Screen$3;
.super Lcom/transsion/camera/manager/ScreenRelay$Screen;
.source "ScreenRelay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/manager/ScreenRelay$Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/manager/ScreenRelay$Screen;-><init>(Ljava/lang/String;ILcom/transsion/camera/manager/ScreenRelay$1;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "SECONDARY"

    return-object p0
.end method
