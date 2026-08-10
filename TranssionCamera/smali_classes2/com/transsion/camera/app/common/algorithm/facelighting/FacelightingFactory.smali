.class public Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;
.super Ljava/lang/Object;
.source "FacelightingFactory.java"


# static fields
.field private static final mFacelightingClass:Ljava/lang/Class;

.field private static final mHumanEffectUiClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.megvii.facelightingsdk.FacelightingClient"

    .line 9
    invoke-static {v0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->mFacelightingClass:Ljava/lang/Class;

    const-string v0, "com.transsion.camera.ui.setting.humaneffect.HumanEffectSettingUIEntry"

    .line 10
    invoke-static {v0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->mHumanEffectUiClass:Ljava/lang/Class;

    return-void
.end method

.method public static getFacelightingClient()Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;
    .locals 4

    .line 13
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->mFacelightingClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getInstance"

    .line 14
    invoke-static {v0, v3, v2}, Lcom/transsion/camera/utils/ReflectionUtils;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    invoke-static {v2, v0, v1}, Lcom/transsion/camera/utils/ReflectionUtils;->doMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isFacelightingSupport()Z
    .locals 1

    .line 23
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->mFacelightingClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->mHumanEffectUiClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
