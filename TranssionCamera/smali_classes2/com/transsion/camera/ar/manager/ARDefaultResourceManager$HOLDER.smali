.class public Lcom/transsion/camera/ar/manager/ARDefaultResourceManager$HOLDER;
.super Ljava/lang/Object;
.source "ARDefaultResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HOLDER"
.end annotation


# static fields
.field public static final instance:Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;-><init>(Lcom/transsion/camera/ar/manager/ARDefaultResourceManager$1;)V

    sput-object v0, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager$HOLDER;->instance:Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;

    return-void
.end method
