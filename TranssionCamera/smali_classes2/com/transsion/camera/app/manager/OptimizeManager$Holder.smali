.class public Lcom/transsion/camera/app/manager/OptimizeManager$Holder;
.super Ljava/lang/Object;
.source "OptimizeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/manager/OptimizeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field public static final instance:Lcom/transsion/camera/app/manager/OptimizeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/transsion/camera/app/manager/OptimizeManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/manager/OptimizeManager;-><init>(Lcom/transsion/camera/app/manager/OptimizeManager$1;)V

    sput-object v0, Lcom/transsion/camera/app/manager/OptimizeManager$Holder;->instance:Lcom/transsion/camera/app/manager/OptimizeManager;

    return-void
.end method
