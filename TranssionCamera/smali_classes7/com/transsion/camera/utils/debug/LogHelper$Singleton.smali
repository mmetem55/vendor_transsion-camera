.class Lcom/transsion/camera/utils/debug/LogHelper$Singleton;
.super Ljava/lang/Object;
.source "LogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/debug/LogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/transsion/camera/utils/debug/LogHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/LogHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/LogHelper;-><init>(Lcom/transsion/camera/utils/debug/LogHelper$1;)V

    sput-object v0, Lcom/transsion/camera/utils/debug/LogHelper$Singleton;->INSTANCE:Lcom/transsion/camera/utils/debug/LogHelper;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/LogHelper;
    .locals 1

    .line 28
    sget-object v0, Lcom/transsion/camera/utils/debug/LogHelper$Singleton;->INSTANCE:Lcom/transsion/camera/utils/debug/LogHelper;

    return-object v0
.end method
