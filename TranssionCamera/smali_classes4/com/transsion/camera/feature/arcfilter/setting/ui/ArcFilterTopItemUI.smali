.class public Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.source "ArcFilterTopItemUI.java"


# direct methods
.method public static synthetic $r8$lambda$hXmDgI3B8NBEo68id0ZWDJgfj_I(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mNeedAnimation:Z

    .line 10
    new-instance p1, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;)V

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 11
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->onSettingOptionClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method
