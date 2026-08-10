.class public Lcom/transsion/camera/featurelibs/ar/ARThreadManager$Holder;
.super Ljava/lang/Object;
.source "ARThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/ar/ARThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field public static instance:Lcom/transsion/camera/featurelibs/ar/ARThreadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/transsion/camera/featurelibs/ar/ARThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/featurelibs/ar/ARThreadManager;-><init>(Lcom/transsion/camera/featurelibs/ar/ARThreadManager$1;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/ar/ARThreadManager$Holder;->instance:Lcom/transsion/camera/featurelibs/ar/ARThreadManager;

    return-void
.end method
