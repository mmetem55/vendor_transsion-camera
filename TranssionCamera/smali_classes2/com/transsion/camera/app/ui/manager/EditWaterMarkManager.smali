.class public Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;
.super Ljava/lang/Object;
.source "EditWaterMarkManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IEditWaterMarkFragmentControl;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mContext:Landroid/content/Context;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

.field mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mRootLayoutId:I

.field private mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "EditWaterMarkManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/app/FragmentManager;ILandroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 47
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 48
    iput p3, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mRootLayoutId:I

    .line 49
    iput-object p4, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mContext:Landroid/content/Context;

    .line 50
    new-instance p2, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p2, p4}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 51
    new-instance p2, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-direct {p2}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 52
    new-instance p3, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$1;

    invoke-direct {p3, p0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$1;-><init>(Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;)V

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setIFragmentControl(Lcom/transsion/camera/app/ui/EditWaterMarkFragment$IFragmentControl;)V

    .line 64
    new-instance p2, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    invoke-direct {p2}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    .line 65
    new-instance p3, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$2;

    invoke-direct {p3, p0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$2;-><init>(Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;)V

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->setIFragmentSortControl(Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment$IFragmentSortControl;)V

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->linkAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method


# virtual methods
.method public enterEditWaterMarkFragment(Landroid/app/Fragment;)V
    .locals 5

    .line 81
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "edit_watermark_fragment"

    if-eqz p1, :cond_0

    .line 82
    sget-object p1, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "enterEditWaterMarkFragment return."

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 88
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getChildInAnim()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 89
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getParentOutAnim()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 90
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getParentInAnim()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 91
    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getChildOutAnim()I

    move-result v4

    .line 88
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    move-result-object p1

    iget v1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mRootLayoutId:I

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    const-string v3, "edit_watermark"

    .line 92
    invoke-virtual {p1, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 93
    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->enterEditWaterMarkFragment()V

    return-void
.end method

.method public enterEditWaterMarkSortFragment(Landroid/app/Fragment;)V
    .locals 4

    .line 106
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    sget-object p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "enterEditWaterMarkSortFragment return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->updateItemsList()V

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getChildInAnim()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 113
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getParentOutAnim()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 114
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getParentInAnim()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 115
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getChildOutAnim()I

    move-result v3

    .line 112
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    move-result-object p1

    iget v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mRootLayoutId:I

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    .line 116
    invoke-virtual {p1, v0, p0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    const-string p1, "edit_watermark_sort_fragment"

    .line 117
    invoke-virtual {p0, p1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public exitEditWaterMarkFragment()V
    .locals 2

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v0, "edit_watermark_fragment"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void
.end method

.method public exitEditWaterMarkSortFragment()V
    .locals 5

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->getEditWaterMarkUIItemsSorted()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_edit_watermark_sort"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_edit_watermark_item"

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateEditWaterMarkUIItemsSorted()V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 0

    return-void
.end method

.method public setLocationManager(Lcom/transsion/camera/app/common/location/LocationManager;)V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setLocationmanager(Lcom/transsion/camera/app/common/location/LocationManager;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    return-void
.end method

.method public setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method public setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    return-void
.end method

.method public updateItemsList()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getEditWaterMarkUIItem()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->setItemsList(Ljava/util/List;)V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getShowTimeInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->setTimeInfo(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getShowCityInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->setCityInfo(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getTextInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->setTextInfo(Ljava/lang/String;)V

    return-void
.end method
