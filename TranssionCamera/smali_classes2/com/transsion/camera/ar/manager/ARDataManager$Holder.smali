.class public Lcom/transsion/camera/ar/manager/ARDataManager$Holder;
.super Ljava/lang/Object;
.source "ARDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ar/manager/ARDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/transsion/camera/ar/manager/ARDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/transsion/camera/ar/manager/ARDataManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/ar/manager/ARDataManager;-><init>(Lcom/transsion/camera/ar/manager/ARDataManager$1;)V

    sput-object v0, Lcom/transsion/camera/ar/manager/ARDataManager$Holder;->INSTANCE:Lcom/transsion/camera/ar/manager/ARDataManager;

    return-void
.end method
