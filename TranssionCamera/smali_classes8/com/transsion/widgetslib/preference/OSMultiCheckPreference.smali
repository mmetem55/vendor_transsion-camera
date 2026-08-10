.class public Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;
.super Lcom/transsion/widgetslib/preference/OSDialogPreference;
.source "OSMultiCheckPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/preference/OSMultiCheckPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/String;

.field private mOrigValues:[Z

.field private mSetValues:[Z

.field private mSummary:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 52
    sget v0, Lcom/transsion/widgetslib/R$attr;->OsDialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/preference/OSDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OsListPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 30
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OsListPreference_entries:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    .line 32
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 34
    :cond_0
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OsListPreference_entryValues:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->setEntryValuesCS([Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;)[Z
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mSetValues:[Z

    return-object p0
.end method

.method private setEntryValuesCS([Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->setValues([Z)V

    if-eqz p1, :cond_0

    .line 106
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 107
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v2, p1, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 200
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 201
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 202
    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    .line 79
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getEntryValues()[Ljava/lang/String;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mSummary:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 161
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getValue(I)Z
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mSetValues:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public getValues()[Z
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mSetValues:[Z

    return-object p0
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    .line 231
    invoke-super {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->getValues()[Z

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mOrigValues:[Z

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mSetValues:[Z

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 243
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onPrepareDialogBuilder(Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;)V
    .locals 3

    .line 212
    invoke-super {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onPrepareDialogBuilder(Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;)V

    .line 214
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mSetValues:[Z

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mOrigValues:[Z

    .line 220
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mSetValues:[Z

    new-instance v2, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference$1;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference$1;-><init>(Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-void

    .line 215
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 265
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    check-cast p1, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference$SavedState;

    .line 272
    invoke-virtual {p1}, Landroid/preference/Preference$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 273
    iget-object p1, p1, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference$SavedState;->values:[Z

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->setValues([Z)V

    return-void

    .line 267
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 252
    invoke-super {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 253
    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 258
    :cond_0
    new-instance v1, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 259
    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->getValues()[Z

    move-result-object p0

    iput-object p0, v1, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference$SavedState;->values:[Z

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setEntries(I)V
    .locals 1

    .line 70
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 1

    .line 60
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 61
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mSetValues:[Z

    .line 62
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mOrigValues:[Z

    return-void
.end method

.method public setEntryValues(I)V
    .locals 1

    .line 100
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->setEntryValuesCS([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntryValues([Ljava/lang/String;)V
    .locals 1

    .line 90
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    .line 91
    iget-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mSetValues:[Z

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 92
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mOrigValues:[Z

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    .line 178
    invoke-super {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 180
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mSummary:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 181
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mSummary:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public setValue(IZ)V
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mSetValues:[Z

    aput-boolean p2, p0, p1

    return-void
.end method

.method public setValues([Z)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mSetValues:[Z

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 141
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 142
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mOrigValues:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    if-eqz p1, :cond_1

    .line 144
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->mSetValues:[Z

    .line 145
    array-length v0, p1

    array-length v2, p0

    if-ge v0, v2, :cond_0

    array-length v0, p1

    goto :goto_0

    :cond_0
    array-length v0, p0

    .line 144
    :goto_0
    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void
.end method
