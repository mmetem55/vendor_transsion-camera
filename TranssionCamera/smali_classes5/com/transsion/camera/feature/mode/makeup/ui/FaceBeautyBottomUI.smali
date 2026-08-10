.class public Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;
.super Landroid/widget/RelativeLayout;
.source "FaceBeautyBottomUI.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

.field private mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

.field private mSettingDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;"
        }
    .end annotation
.end field

.field private mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 24
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;)Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;)Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    return-object p0
.end method


# virtual methods
.method public closeContrast(Z)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->closeContrast(Z)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->closeContrast(Z)V

    .line 74
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    if-eqz p0, :cond_2

    .line 75
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->closeContrast(Z)V

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 116
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 117
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->makeup_root:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    .line 118
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->slimbody_root:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    .line 119
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->facebeauty_root:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    .line 120
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishInflate mStatusMonitor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public openContrast()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->openContrast()V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->openContrast()V

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    if-eqz p0, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->openContrast()V

    :cond_2
    return-void
.end method

.method public progressChanged(I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->progressChanged(I)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->progressChanged(I)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->progressChanged(I)V

    :cond_2
    return-void
.end method

.method public registerSettingData(Lcom/transsion/camera/app/common/setting/StatusMonitor;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/app/common/setting/StatusMonitor;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 137
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mSettingDataList:Ljava/util/List;

    .line 138
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 139
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v2, "key_makeup_feature"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto :goto_1

    .line 142
    :cond_1
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v2, "key_mu_slimbody"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto :goto_1

    .line 144
    :cond_2
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v2, "key_mu_face_beauty"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_0

    .line 148
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V

    return-void
.end method

.method public unregisterSettingData()V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mSettingDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 156
    iget-object v2, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v3, "key_makeup_feature"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    iget-object v3, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto :goto_1

    .line 159
    :cond_1
    iget-object v2, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v3, "key_mu_slimbody"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    iget-object v3, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto :goto_1

    .line 161
    :cond_2
    iget-object v2, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v3, "key_mu_face_beauty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 162
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    iget-object v3, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 164
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v2, :cond_0

    .line 165
    iget-object v1, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public updateFeatureRv(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateFeatureUI(Z)V

    .line 108
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->updateFeatureUI(Z)V

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->updateFeatureUI(Z)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateFeatureUI(Z)V

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->updateFeatureUI(Z)V

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->updateFeatureUI(Z)V

    goto :goto_0

    .line 97
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateFeatureUI(Z)V

    .line 98
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->updateFeatureUI(Z)V

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->updateFeatureUI(Z)V

    :goto_0
    return-void
.end method

.method updateLowLight(Z)V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->mFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    if-eqz p0, :cond_0

    .line 125
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateLowLight(Z)V

    :cond_0
    return-void
.end method
