.class Lcom/transsion/algorithm/STBlurConfig$Build;
.super Ljava/lang/Object;
.source "STBlurConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/algorithm/STBlurConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Build"
.end annotation


# instance fields
.field private mFrontCamera:Z

.field private mHasFace:Z

.field private mSTBlurOn:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/transsion/algorithm/STBlurConfig$Build;->mSTBlurOn:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/algorithm/STBlurConfig$Build;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/transsion/algorithm/STBlurConfig$Build;->mFrontCamera:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/algorithm/STBlurConfig$Build;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/transsion/algorithm/STBlurConfig$Build;->mHasFace:Z

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/algorithm/STBlurConfig$Build;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/transsion/algorithm/STBlurConfig$Build;->mSTBlurOn:Z

    return p0
.end method


# virtual methods
.method build()Lcom/transsion/algorithm/STBlurConfig;
    .locals 2

    .line 60
    new-instance v0, Lcom/transsion/algorithm/STBlurConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/algorithm/STBlurConfig;-><init>(Lcom/transsion/algorithm/STBlurConfig$Build;Lcom/transsion/algorithm/STBlurConfig$1;)V

    return-object v0
.end method

.method frontCamera(Z)Lcom/transsion/algorithm/STBlurConfig$Build;
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/transsion/algorithm/STBlurConfig$Build;->mFrontCamera:Z

    return-object p0
.end method

.method hasFace(Z)Lcom/transsion/algorithm/STBlurConfig$Build;
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/transsion/algorithm/STBlurConfig$Build;->mHasFace:Z

    return-object p0
.end method

.method stBlurOn(Z)Lcom/transsion/algorithm/STBlurConfig$Build;
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/transsion/algorithm/STBlurConfig$Build;->mSTBlurOn:Z

    return-object p0
.end method
