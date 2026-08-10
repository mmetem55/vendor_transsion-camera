.class final Lcom/transsion/camera/manager/ScreenRelay$InstanceHolder;
.super Ljava/lang/Object;
.source "ScreenRelay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/manager/ScreenRelay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/transsion/camera/manager/ScreenRelay;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Lcom/transsion/camera/manager/ScreenRelay;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/manager/ScreenRelay;-><init>(Lcom/transsion/camera/manager/ScreenRelay$1;)V

    sput-object v0, Lcom/transsion/camera/manager/ScreenRelay$InstanceHolder;->INSTANCE:Lcom/transsion/camera/manager/ScreenRelay;

    return-void
.end method

.method static synthetic access$200()Lcom/transsion/camera/manager/ScreenRelay;
    .locals 1

    .line 63
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay$InstanceHolder;->INSTANCE:Lcom/transsion/camera/manager/ScreenRelay;

    return-object v0
.end method
