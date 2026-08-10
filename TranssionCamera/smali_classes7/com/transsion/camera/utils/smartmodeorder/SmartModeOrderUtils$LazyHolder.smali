.class Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils$LazyHolder;
.super Ljava/lang/Object;
.source "SmartModeOrderUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;-><init>(Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils$1;)V

    sput-object v0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils$LazyHolder;->INSTANCE:Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;
    .locals 1

    .line 25
    sget-object v0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils$LazyHolder;->INSTANCE:Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    return-object v0
.end method
