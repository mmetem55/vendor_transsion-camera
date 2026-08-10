.class Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$SettingBaseChangeListener;
.super Ljava/lang/Object;
.source "AbstractWideCameraItemUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingBaseChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$SettingBaseChangeListener;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;)V
    .locals 0

    .line 575
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$SettingBaseChangeListener;-><init>(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 575
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$SettingBaseChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
