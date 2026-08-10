.class public abstract Lcom/transsion/camera/app/ui/AbstractSettingFragment;
.super Landroid/preference/PreferenceFragment;
.source "AbstractSettingFragment.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mCurrentModeName:Ljava/lang/String;

.field private mScreenFormType:I

.field protected mSettingUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;",
            ">;"
        }
    .end annotation
.end field

.field private mStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SettingFragment"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    const-string v0, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    .line 42
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mCurrentModeName:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingUIList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected abstract addAllPreferences()V
.end method

.method public getChildInAnim()I
    .locals 0

    const/high16 p0, 0x7f020000

    return p0
.end method

.method public getChildOutAnim()I
    .locals 0

    const p0, 0x7f020001

    return p0
.end method

.method public getParentInAnim()I
    .locals 0

    const p0, 0x7f020002

    return p0
.end method

.method public getParentOutAnim()I
    .locals 0

    const p0, 0x7f020003

    return p0
.end method

.method protected abstract getPreferenceResource()I
.end method

.method protected abstract getToolbar(Landroid/view/View;)Landroid/widget/Toolbar;
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 5

    .line 113
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getToolbar(Landroid/view/View;)Landroid/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/ScreenUtils;->getCutoutHeight(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_0

    .line 117
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 118
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 119
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v1

    sub-int/2addr v4, v2

    .line 120
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 121
    invoke-virtual {v0, v3}, Landroid/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 125
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 127
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v1, 0x7f08052a

    .line 128
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 131
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->getWaterfallEdgeSize(Landroid/content/Context;)I

    move-result p0

    .line 132
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initViews waterfallEdgeSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-lez p0, :cond_2

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p1, p0, v0, p0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    const p0, 0x102000a

    .line 137
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView;

    .line 138
    invoke-static {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroid/widget/ListView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 57
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->setHasOptionsMenu(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getPreferenceResource()I

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 62
    :cond_0
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onCreate"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 91
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;

    if-eqz p0, :cond_0

    .line 93
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;->onFragmentDestroy()V

    .line 95
    :cond_0
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 83
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 84
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->unInitViews()V

    .line 85
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->removeAllPreferences()V

    .line 86
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onDestroyView"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 100
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 105
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->popBackStack()V

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 75
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;

    if-eqz p0, :cond_0

    .line 77
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;->onFragmentResume()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->initViews(Landroid/view/View;)V

    .line 69
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->addAllPreferences()V

    .line 70
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onViewCreate"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract removeAllPreferences()V
.end method

.method public setSettingUIList(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingUIList:Ljava/util/List;

    .line 47
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method public setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;

    return-void
.end method

.method protected abstract unInitViews()V
.end method
