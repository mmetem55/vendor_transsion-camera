.class public Lcom/transsion/camera/ar/manager/ARManager$Holder;
.super Ljava/lang/Object;
.source "ARManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ar/manager/ARManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field public static final instance:Lcom/transsion/camera/ar/manager/ARManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/ar/manager/ARManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/ar/manager/ARManager;-><init>(Lcom/transsion/camera/ar/manager/ARManager$1;)V

    sput-object v0, Lcom/transsion/camera/ar/manager/ARManager$Holder;->instance:Lcom/transsion/camera/ar/manager/ARManager;

    return-void
.end method
