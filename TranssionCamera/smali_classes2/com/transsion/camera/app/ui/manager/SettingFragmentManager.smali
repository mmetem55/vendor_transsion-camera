.class public Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;
.super Ljava/lang/Object;
.source "SettingFragmentManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field mEditWaterMarkFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IEditWaterMarkFragmentControl;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field mIRemoteCaptureFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IRemoteCaptureFragmentControl;

.field mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

.field private mRootLayoutId:I

.field private mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

.field private mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

.field protected mSettingUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mStorageSettingProvider:Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SettingFragmentManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManager;ILcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;Lcom/transsion/camera/app/common/IAppUIControl$IEditWaterMarkFragmentControl;Lcom/transsion/camera/app/common/IAppUIControl$IRemoteCaptureFragmentControl;Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/SettingFragment;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingUIList:Ljava/util/List;

    .line 59
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 60
    iput p2, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mRootLayoutId:I

    .line 61
    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    .line 62
    iput-object p4, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mEditWaterMarkFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IEditWaterMarkFragmentControl;

    .line 63
    iput-object p5, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mIRemoteCaptureFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IRemoteCaptureFragmentControl;

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-virtual {p0, p6, p2}, Lcom/transsion/camera/app/ui/SettingFragment;->setAppUiRootViewId(Lcom/transsion/camera/app/common/IAppUI;I)V

    return-void
.end method

.method private filterForNormalCamera(Ljava/util/List;ZZLjava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;",
            ">;ZZ",
            "Ljava/util/Iterator<",
            "Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 175
    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 177
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    .line 176
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 177
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string p2, "key_storage"

    .line 178
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 179
    invoke-interface {p4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const-string p2, "key_location"

    .line 182
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p3, :cond_0

    .line 183
    invoke-interface {p4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private filterForSecureCamera(Ljava/util/List;ZLjava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;",
            ">;Z",
            "Ljava/util/Iterator<",
            "Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;",
            ">;)V"
        }
    .end annotation

    .line 147
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 149
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    .line 148
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 149
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "key_storage"

    .line 150
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const-string v0, "key_location"

    .line 154
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 155
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    const-string v0, "key_restore_settings"

    .line 158
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    const-string v0, "key_order_editor"

    .line 162
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 163
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private initSettingUIList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;",
            ">;)V"
        }
    .end annotation

    .line 202
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 203
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;->setSettingFragmentControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;)V

    .line 204
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_1

    .line 205
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    if-eqz v1, :cond_2

    .line 209
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 210
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 213
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mStorageSettingProvider:Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;

    if-eqz v1, :cond_0

    .line 214
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mStorageSettingProvider:Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;

    .line 215
    invoke-interface {v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;->getStorageSettingKey()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mStorageSettingProvider:Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;->getStorageSetting()Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 217
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public enterSettingFragment()V
    .locals 6

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/SettingFragment;->getEnterAnimation()I

    move-result v1

    .line 82
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/SettingFragment;->getExitAnimation()I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    .line 84
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "setting_fragment"

    if-lez v1, :cond_1

    .line 88
    sget-object v3, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enterSettingFragment size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 92
    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 93
    iget v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mRootLayoutId:I

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    const-string v2, "Setting"

    invoke-virtual {v0, v1, p0, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public exitSettingFragment(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "key_order_editor"

    .line 98
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;->enterEditorFragment(Landroid/app/Fragment;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "key_edit_watermark"

    .line 100
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mEditWaterMarkFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IEditWaterMarkFragmentControl;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IEditWaterMarkFragmentControl;->enterEditWaterMarkFragment(Landroid/app/Fragment;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "key_remote_capture"

    .line 102
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mIRemoteCaptureFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IRemoteCaptureFragmentControl;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IRemoteCaptureFragmentControl;->enterRemoteCaptureFragment(Landroid/app/Fragment;)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 p1, 0x1

    const-string v0, "setting_fragment"

    invoke-virtual {p0, v0, p1}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    if-eqz v0, :cond_1

    .line 73
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    return-void
.end method

.method public setSettingUIList(Ljava/util/List;Ljava/lang/String;ZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;",
            ">;",
            "Ljava/lang/String;",
            "ZZZ)V"
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->unInitSettingUIs()V

    .line 128
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 130
    invoke-direct {p0, p1, p5, v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->filterForSecureCamera(Ljava/util/List;ZLjava/util/Iterator;)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-direct {p0, p1, p4, p5, v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->filterForNormalCamera(Ljava/util/List;ZZLjava/util/Iterator;)V

    .line 135
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->initSettingUIList(Ljava/util/List;)V

    .line 136
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingUIList:Ljava/util/List;

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    return-void
.end method

.method public setStorageSettingProvider(Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mStorageSettingProvider:Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 198
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->unInitSettingUIs()V

    return-void
.end method

.method public unInitSettingUIs()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 191
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_0

    .line 193
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method
