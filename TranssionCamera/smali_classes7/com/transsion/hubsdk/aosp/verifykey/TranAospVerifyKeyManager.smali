.class public Lcom/transsion/hubsdk/aosp/verifykey/TranAospVerifyKeyManager;
.super Ljava/lang/Object;
.source "TranAospVerifyKeyManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/verifykey/ITranVerifyKeyManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospVerifyKeyManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Landroid/content/Context;)I
    .locals 0

    .line 20
    sget-object p0, Lcom/transsion/hubsdk/aosp/verifykey/TranAospVerifyKeyManager;->TAG:Ljava/lang/String;

    const-string p1, "Aosp can not verify"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
