.class public abstract Lcom/transsion/camera/app/ui/setting/spec/ToggleSettingUISpec;
.super Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
.source "ToggleSettingUISpec.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x2

    .line 27
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;-><init>(Ljava/lang/String;ILandroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createSupportedEntries(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 60
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 62
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 68
    new-array v1, p1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 71
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    .line 72
    new-array v0, p1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    .line 74
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 75
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 76
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntries:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v2, v0

    .line 77
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v3, v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected final init(Landroid/content/res/Resources;)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntries:[Ljava/lang/String;

    .line 33
    sget v2, Lcom/transsion/camera/app/common/R$string;->setting_on_entry:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 34
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntries:[Ljava/lang/String;

    sget v2, Lcom/transsion/camera/app/common/R$string;->setting_off_entry:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    .line 36
    sget v1, Lcom/transsion/camera/app/common/R$string;->setting_on_entry_value:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 37
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    sget v1, Lcom/transsion/camera/app/common/R$string;->setting_off_entry_value:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 39
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ToggleSettingUISpec;->initTitle(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mTitle:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mMessage:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ToggleSettingUISpec;->initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ToggleSettingUISpec;->initSummary(Landroid/content/res/Resources;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntrySummaries:[Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ToggleSettingUISpec;->initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 45
    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->typedArrayToDrawableArray(Landroid/content/res/TypedArray;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    .line 46
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntries:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    .line 50
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    .line 51
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntrySummaries:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntrySummaries:[Ljava/lang/String;

    .line 52
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryDrawables:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected abstract initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
.end method

.method protected abstract initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
.end method

.method protected abstract initSummary(Landroid/content/res/Resources;)[Ljava/lang/String;
.end method

.method protected abstract initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
.end method
