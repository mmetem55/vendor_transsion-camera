.class public Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;
.super Landroid/widget/FrameLayout;
.source "MakeUpBottomUI.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

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

    const-class v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance p1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 24
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;)Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;)Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    return-object p0
.end method


# virtual methods
.method public closeContrast(Z)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->closeContrast(Z)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->closeContrast(Z)V

    .line 74
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    if-eqz p0, :cond_2

    .line 75
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->closeContrast(Z)V

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 113
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 114
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->makeup_root:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    .line 115
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->slimbody_root:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    .line 116
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->facebeauty_root:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    .line 117
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishInflate mStatusMonitor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public openContrast()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->openContrast()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->openContrast()V

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    if-eqz p0, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->openContrast()V

    :cond_2
    return-void
.end method

.method public progressChanged(I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->progressChanged(I)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->progressChanged(I)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->progressChanged(I)V

    :cond_2
    return-void
.end method

.method public registerSettingData(Lcom/transsion/camera/app/common/setting/StatusMonitor;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/app/common/setting/StatusMonitor;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 134
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mSettingDataList:Ljava/util/List;

    .line 135
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

    .line 136
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "key_mu_face_beauty"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "key_makeup_feature"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "key_mu_slimbody"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 145
    :pswitch_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto :goto_2

    .line 139
    :pswitch_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto :goto_2

    .line 142
    :pswitch_2
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    :goto_2
    if-eqz p1, :cond_0

    .line 149
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_0

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x709a336 -> :sswitch_2
        0x489ebfa0 -> :sswitch_1
        0x7e425a67 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public releaseResource()V
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    if-eqz p0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->releaseResource()V

    :cond_0
    return-void
.end method

.method public setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V

    return-void
.end method

.method public unregisterSettingData()V
    .locals 5

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mSettingDataList:Ljava/util/List;

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

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "key_mu_face_beauty"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1
    const-string v4, "key_makeup_feature"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "key_mu_slimbody"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 165
    :pswitch_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    iget-object v3, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto :goto_2

    .line 159
    :pswitch_1
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    iget-object v3, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto :goto_2

    .line 162
    :pswitch_2
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    iget-object v3, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 168
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v2, :cond_0

    .line 169
    iget-object v1, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_0

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x709a336 -> :sswitch_2
        0x489ebfa0 -> :sswitch_1
        0x7e425a67 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->updateFeatureUI(Z)V

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->updateFeatureUI(Z)V

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->updateFeatureUI(Z)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->updateFeatureUI(Z)V

    .line 100
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->updateFeatureUI(Z)V

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->updateFeatureUI(Z)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->updateFeatureUI(Z)V

    .line 95
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->updateFeatureUI(Z)V

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->updateFeatureUI(Z)V

    :goto_0
    return-void
.end method

.method updateLowLight(Z)V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    if-eqz p0, :cond_0

    .line 122
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->updateLowLight(Z)V

    :cond_0
    return-void
.end method
