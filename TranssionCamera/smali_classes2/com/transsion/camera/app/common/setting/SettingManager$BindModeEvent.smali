.class Lcom/transsion/camera/app/common/setting/SettingManager$BindModeEvent;
.super Ljava/lang/Object;
.source "SettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/setting/SettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BindModeEvent"
.end annotation


# instance fields
.field modeFeatures:[Ljava/lang/String;

.field modeKey:Ljava/lang/String;

.field modeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager$BindModeEvent;->modeKey:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingManager$BindModeEvent;->modeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    .line 79
    iput-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingManager$BindModeEvent;->modeFeatures:[Ljava/lang/String;

    return-void
.end method
