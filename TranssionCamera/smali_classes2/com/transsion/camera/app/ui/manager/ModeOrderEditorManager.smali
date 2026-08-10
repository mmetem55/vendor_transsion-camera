.class public Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;
.super Ljava/lang/Object;
.source "ModeOrderEditorManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAllModeResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation
.end field

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mBackCameraModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation
.end field

.field private mCamera:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mFrontCameraModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSecureCamera:Z

.field mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

.field private mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

.field private mModesNumberInTab:Ljava/lang/String;

.field private mRootLayoutId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModeOrderEditorManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/app/FragmentManager;ILandroid/content/Context;IZ)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 40
    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mCamera:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 50
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 51
    iput p3, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mRootLayoutId:I

    .line 52
    iput-object p4, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mContext:Landroid/content/Context;

    .line 53
    new-instance p2, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-direct {p2}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    .line 54
    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->linkAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 55
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-virtual {p1, p5}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->initModesNumber(I)V

    .line 56
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModesNumberInTab:Ljava/lang/String;

    .line 57
    iput-boolean p6, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mIsSecureCamera:Z

    return-void
.end method

.method private generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 107
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/FeatureResource;

    .line 108
    iget-object v5, v4, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public enterEditorFragment(Landroid/app/Fragment;)V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-object p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "enterEditorFragment return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    if-nez p1, :cond_1

    .line 75
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->getEnterAnimation()I

    move-result p1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    .line 76
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->getExitAnimation()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    .line 77
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->getEnterAnimation()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    .line 78
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->getExitAnimation()I

    move-result v3

    .line 75
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getChildInAnim()I

    move-result p1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    .line 81
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getParentOutAnim()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    .line 82
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getParentInAnim()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    .line 83
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getChildOutAnim()I

    move-result v3

    .line 80
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 85
    :goto_0
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mRootLayoutId:I

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    const-string v2, "order_editor"

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "order_editor_fragment"

    .line 86
    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 88
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->updateModesList()V

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->enterModeEditorFragment()V

    return-void
.end method

.method public exitEditorFragment()V
    .locals 2

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v0, "order_editor_fragment"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void
.end method

.method public getInitialModesNumberInTab()Ljava/lang/String;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModesNumberInTab:Ljava/lang/String;

    return-object p0
.end method

.method public isEditorFragmentShow()Z
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSecureCamera()Z
    .locals 0

    .line 183
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mIsSecureCamera:Z

    return p0
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 0

    return-void
.end method

.method public setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;",
            ")V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mAllModeResources:Ljava/util/List;

    .line 99
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    return-void
.end method

.method public setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mCamera:Ljava/lang/String;

    return-void
.end method

.method public updateModesList()V
    .locals 8

    .line 125
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 126
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mCamera:Ljava/lang/String;

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mCamera:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModesNumberInTab:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v5, "frontmainmodescount"

    invoke-virtual {v0, v5, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 153
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    const-string v5, "1"

    invoke-interface {v2, v5}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDataStoreModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v2, v5}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 157
    :cond_1
    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 158
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    const-string v7, "frontarcoreposition"

    invoke-virtual {v0, v7, v5, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v0, v3, :cond_2

    .line 160
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 161
    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v0, 0x1

    .line 162
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    invoke-static {v2, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v3

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mAllModeResources:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mFrontCameraModeList:Ljava/util/List;

    .line 167
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mCamera:Ljava/lang/String;

    invoke-virtual {v2, v0, p0, v1}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->setModeList(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_3

    .line 127
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModesNumberInTab:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "backmainmodescount"

    invoke-virtual {v0, v6, v1, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDataStoreModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 131
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 133
    :cond_4
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v4

    .line 135
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_6

    .line 136
    aget-object v5, v1, v2

    const-string v6, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move v2, v3

    :goto_2
    if-le v2, v3, :cond_7

    .line 142
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 143
    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v2, 0x1

    .line 144
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v2

    invoke-static {v1, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v3

    .line 148
    :cond_7
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mAllModeResources:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mBackCameraModeList:Ljava/util/List;

    .line 149
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mCamera:Ljava/lang/String;

    invoke-virtual {v2, v1, p0, v0}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->setModeList(Ljava/util/List;Ljava/lang/String;I)V

    :goto_3
    return-void
.end method
