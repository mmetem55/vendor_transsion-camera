.class public final Lcom/transsion/camera/utils/aal/AalUtil;
.super Ljava/lang/Object;
.source "AalUtil.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/utils/aal/AalUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/aal/AalUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setCurrentAALFunction(I)V
    .locals 3

    .line 46
    sget-object v0, Lcom/transsion/camera/utils/aal/AalUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentAALFunction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 47
    invoke-static {p0}, Lcom/transsion/camera/utils/aal/PictureQuality;->setAALFunction(I)V

    return-void
.end method

.method public static turnOffAal()V
    .locals 2

    .line 31
    sget-object v0, Lcom/transsion/camera/utils/aal/AalUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "turnOffAal"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 32
    invoke-static {v0}, Lcom/transsion/camera/utils/aal/PictureQuality;->setSmartBackLightStrength(I)V

    return-void
.end method

.method public static turnOnAal()V
    .locals 2

    .line 36
    sget-object v0, Lcom/transsion/camera/utils/aal/AalUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "turnOnAal"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x3c

    .line 37
    invoke-static {v0}, Lcom/transsion/camera/utils/aal/PictureQuality;->setSmartBackLightStrength(I)V

    return-void
.end method

.method public static turnOnAalForPause()V
    .locals 2

    .line 41
    sget-object v0, Lcom/transsion/camera/utils/aal/AalUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "turnOnAalForPause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x80

    .line 42
    invoke-static {v0}, Lcom/transsion/camera/utils/aal/PictureQuality;->setSmartBackLightStrength(I)V

    return-void
.end method
