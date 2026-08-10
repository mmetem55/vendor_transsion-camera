.class public Lcom/transsion/camera/app/ui/SettingFragment;
.super Lcom/transsion/camera/app/ui/AbstractSettingFragment;
.source "SettingFragment.java"


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mRootViewId:I

.field private mShortcutListView:Landroid/view/ViewGroup;


# direct methods
.method public static synthetic $r8$lambda$06niBx9DCeAG4rK2hm9vbnu7hYk(Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/SettingFragment;->lambda$preferenceToShortcutItem$0(Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Et4XYmb7ewiKsXiEqQ3UF3EzQGg(Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/ui/SettingFragment;->lambda$inflateShortcutItemView$2(Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$I6ju_DQnLehJiRHJc-wnkOF5S_E(Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/ui/SettingFragment;->lambda$inflateShortcutItemView$1(Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mPreferenceList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/SettingFragment;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/SettingFragment;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mRootViewId:I

    return p0
.end method

.method private addCustomFragmentTransaction(Landroid/preference/Preference;)V
    .locals 3

    .line 240
    instance-of v0, p1, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;

    if-eqz v0, :cond_0

    .line 241
    move-object v0, p1

    check-cast v0, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;->getCustomFragment()Lcom/transsion/camera/app/common/ui/AbstractCustomFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 243
    new-instance v2, Lcom/transsion/camera/app/ui/SettingFragment$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/transsion/camera/app/ui/SettingFragment$2;-><init>(Lcom/transsion/camera/app/ui/SettingFragment;Lcom/transsion/camera/app/common/ui/AbstractCustomFragment;Landroid/preference/Preference;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;->setPreferenceListener(Lcom/transsion/camera/app/common/ui/preference/FragmentPreference$PreferenceListener;)V

    :cond_0
    return-void
.end method

.method private clearPreferenceList()V
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mPreferenceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static inflateShortcutItemView(Landroid/view/ViewGroup;ILcom/transsion/camera/app/ui/shortcut/ShortcutItem;)Landroid/view/View;
    .locals 2

    .line 206
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const p1, 0x7f09037d

    .line 208
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f09037f

    .line 209
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 211
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;->getSelectorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_1
    new-instance p1, Lcom/transsion/camera/app/ui/SettingFragment$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2, p0}, Lcom/transsion/camera/app/ui/SettingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;->getPreference()Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/ui/SettingFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p0}, Lcom/transsion/camera/app/ui/SettingFragment$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;->setOnCheckChangedListener(Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference$OnCheckChangedListener;)V

    .line 235
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    return-object p0
.end method

.method private static synthetic lambda$inflateShortcutItemView$1(Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 220
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;->isChecked()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 221
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;->setChecked(Z)V

    .line 222
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;->getOnValueChangeListener()Lcom/transsion/camera/app/ui/shortcut/ShortcutItem$OnValueChangeListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 226
    invoke-interface {p0, p2}, Lcom/transsion/camera/app/ui/shortcut/ShortcutItem$OnValueChangeListener;->onValueChanged(Z)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$inflateShortcutItemView$2(Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;Landroid/view/View;Z)V
    .locals 0

    .line 231
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;->setChecked(Z)V

    .line 232
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private static synthetic lambda$preferenceToShortcutItem$0(Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;Z)V
    .locals 1

    .line 197
    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static preferenceToShortcutItem(Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;)Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;
    .locals 2

    .line 192
    new-instance v0, Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;-><init>(Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;)V

    .line 193
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;->getEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;->setEntryDrawables([Landroid/graphics/drawable/Drawable;)V

    .line 194
    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;->setChecked(Z)V

    .line 196
    new-instance v1, Lcom/transsion/camera/app/ui/SettingFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/SettingFragment$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;->setOnValueChangeListener(Lcom/transsion/camera/app/ui/shortcut/ShortcutItem$OnValueChangeListener;)V

    return-object v0
.end method

.method private setCustomPreferenceLayout(Landroid/preference/Preference;)V
    .locals 0

    .line 183
    instance-of p0, p1, Landroid/preference/SwitchPreference;

    if-eqz p0, :cond_0

    const p0, 0x7f0c0179

    .line 184
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_0

    :cond_0
    const p0, 0x7f0c0177

    .line 186
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setLayoutResource(I)V

    :goto_0
    const/4 p0, 0x1

    .line 188
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setRecycleEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected addAllPreferences()V
    .locals 10

    .line 103
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SettingFragment;->clearPreferenceList()V

    const-string v0, "pref_category_main"

    .line 104
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    const-string v1, "pref_screen_top"

    .line 105
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 107
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingUIList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    .line 110
    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingUIList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 111
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;->createPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v6

    .line 112
    iget-object v7, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mPreferenceList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    instance-of v6, v6, Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;

    if-eqz v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    const/4 v4, 0x1

    if-lt v5, v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-nez v2, :cond_3

    .line 120
    iget-object v5, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mShortcutListView:Landroid/view/ViewGroup;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 122
    :cond_3
    iget-object v5, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mShortcutListView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 125
    :goto_2
    iget-object v5, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mPreferenceList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/Preference;

    if-eqz v6, :cond_4

    if-eqz v2, :cond_5

    .line 128
    iget-object v7, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mShortcutListView:Landroid/view/ViewGroup;

    .line 129
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_5

    instance-of v7, v6, Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;

    if-eqz v7, :cond_5

    move v7, v4

    goto :goto_4

    :cond_5
    move v7, v3

    :goto_4
    if-eqz v7, :cond_6

    .line 132
    move-object v7, v6

    check-cast v7, Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;

    invoke-static {v7}, Lcom/transsion/camera/app/ui/SettingFragment;->preferenceToShortcutItem(Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;)Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;

    move-result-object v7

    .line 133
    iget-object v8, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mShortcutListView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SettingFragment;->getShortcutLayoutId()I

    move-result v9

    invoke-static {v8, v9, v7}, Lcom/transsion/camera/app/ui/SettingFragment;->inflateShortcutItemView(Landroid/view/ViewGroup;ILcom/transsion/camera/app/ui/shortcut/ShortcutItem;)Landroid/view/View;

    move-result-object v7

    .line 134
    iget-object v8, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mShortcutListView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 136
    :cond_6
    invoke-direct {p0, v6}, Lcom/transsion/camera/app/ui/SettingFragment;->setCustomPreferenceLayout(Landroid/preference/Preference;)V

    .line 138
    invoke-virtual {v6}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "key_restore_settings"

    .line 139
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 140
    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-nez v7, :cond_8

    .line 141
    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 144
    :cond_7
    invoke-virtual {v0, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-nez v7, :cond_8

    .line 145
    invoke-virtual {v0, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 149
    :cond_8
    :goto_5
    invoke-direct {p0, v6}, Lcom/transsion/camera/app/ui/SettingFragment;->addCustomFragmentTransaction(Landroid/preference/Preference;)V

    goto :goto_3

    :cond_9
    return-void
.end method

.method public getEnterAnimation()I
    .locals 0

    const p0, 0x7f02002f

    return p0
.end method

.method public getExitAnimation()I
    .locals 0

    const p0, 0x7f020030

    return p0
.end method

.method protected getPreferenceResource()I
    .locals 0

    const p0, 0x7f140001

    return p0
.end method

.method protected getShortcutLayoutId()I
    .locals 0

    const p0, 0x7f0c0178

    return p0
.end method

.method protected getToolbar(Landroid/view/View;)Landroid/widget/Toolbar;
    .locals 0

    const p0, 0x7f0903f2

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Toolbar;

    if-eqz p0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/widget/Toolbar;->hideOverflowMenu()Z

    :cond_0
    return-object p0
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->initViews(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 61
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;->init()V

    goto :goto_0

    :cond_0
    const v0, 0x7f0903f1

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mShortcutListView:Landroid/view/ViewGroup;

    .line 64
    new-instance p1, Lcom/transsion/camera/app/ui/SettingFragment$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/SettingFragment$1;-><init>(Lcom/transsion/camera/app/ui/SettingFragment;)V

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager;->setBindViewListener(Lcom/transsion/camera/app/common/ui/preference/BindViewListener;)V

    return-void
.end method

.method protected removeAllPreferences()V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SettingFragment;->clearPreferenceList()V

    return-void
.end method

.method public setAppUiRootViewId(Lcom/transsion/camera/app/common/IAppUI;I)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 179
    iput p2, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mRootViewId:I

    return-void
.end method

.method protected unInitViews()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 162
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mShortcutListView:Landroid/view/ViewGroup;

    return-void
.end method
