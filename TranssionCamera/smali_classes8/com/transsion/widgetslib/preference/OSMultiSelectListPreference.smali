.class public Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;
.super Lcom/transsion/widgetslib/preference/OSDialogPreference;
.source "OSMultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChanged:Z

.field private mValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 56
    sget v0, Lcom/transsion/widgetslib/R$attr;->OsDialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/preference/OSDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    .line 43
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OsListPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 46
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OsListPreference_entries:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 47
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OsListPreference_entryValues:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 48
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$076(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;I)Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mPreferenceChanged:Z

    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mPreferenceChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;)[Ljava/lang/CharSequence;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;)Ljava/util/Set;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    return-object p0
.end method

.method private getSelectedItems()[Z
    .locals 5

    .line 185
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 186
    array-length v1, v0

    .line 187
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 188
    new-array v2, v1, [Z

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 191
    aget-object v4, v0, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    aput-boolean v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 149
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 150
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 151
    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getValues()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mValues:Ljava/util/Set;

    return-object p0
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    .line 199
    invoke-super {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    .line 201
    iget-boolean p1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mPreferenceChanged:Z

    if-eqz p1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    .line 203
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    :cond_0
    const/4 p1, 0x0

    .line 207
    iput-boolean p1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mPreferenceChanged:Z

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 2

    .line 212
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p0

    .line 213
    array-length p1, p0

    .line 214
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 217
    aget-object v1, p0, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method protected onPrepareDialogBuilder(Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;)V
    .locals 3

    .line 161
    invoke-super {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onPrepareDialogBuilder(Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;)V

    .line 163
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->getSelectedItems()[Z

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$1;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$1;-><init>(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 180
    iget-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 181
    iget-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 164
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "MultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 230
    invoke-super {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 231
    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 236
    :cond_0
    new-instance v1, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 237
    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object p0

    iput-object p0, v1, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 225
    iget-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    check-cast p1, Ljava/util/Set;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    return-void
.end method

.method public setEntries(I)V
    .locals 1

    .line 82
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setEntryValues(I)V
    .locals 1

    .line 110
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setValues(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 130
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 132
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistStringSet(Ljava/util/Set;)Z

    return-void
.end method
