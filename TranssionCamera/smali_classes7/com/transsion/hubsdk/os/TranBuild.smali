.class public Lcom/transsion/hubsdk/os/TranBuild;
.super Ljava/lang/Object;
.source "TranBuild.java"


# static fields
.field public static THUBCORE_VERSION:Ljava/lang/String;

.field public static THUBCORE_VERSION_INT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0"

    sput-object v0, Lcom/transsion/hubsdk/os/TranBuild;->THUBCORE_VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/transsion/hubsdk/os/TranBuild;->THUBCORE_VERSION_INT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
