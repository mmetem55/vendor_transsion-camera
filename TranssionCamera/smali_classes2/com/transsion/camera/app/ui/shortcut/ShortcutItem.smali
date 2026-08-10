.class public Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;
.super Ljava/lang/Object;
.source "ShortcutItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/shortcut/ShortcutItem$OnValueChangeListener;
    }
.end annotation


# instance fields
.field private mEntryDrawables:[Landroid/graphics/drawable/Drawable;

.field private mIsChecked:Z

.field private mOnValueChangeListener:Lcom/transsion/camera/app/ui/shortcut/ShortcutItem$OnValueChangeListener;

.field private final mPreference:Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;->mPreference:Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;

    .line 30
    invoke-virtual {p1}, Landroid/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getOnValueChangeListener()Lcom/transsion/camera/app/ui/shortcut/ShortcutItem$OnValueChangeListener;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;->mOnValueChangeListener:Lcom/transsion/camera/app/ui/shortcut/ShortcutItem$OnValueChangeListener;

    return-object p0
.end method

.method public getPreference()Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;->mPreference:Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;

    return-object p0
.end method

.method public getSelectorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const/4 v2, 0x1

    .line 60
    aget-object p0, p0, v2

    .line 61
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v2, v2, [I

    const v4, 0x10100a1

    aput v4, v2, v0

    .line 62
    invoke-virtual {v3, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v0, v0, [I

    .line 63
    invoke-virtual {v3, v0, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v3
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isChecked()Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;->mIsChecked:Z

    return p0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;->mIsChecked:Z

    return-void
.end method

.method public setEntryDrawables([Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOnValueChangeListener(Lcom/transsion/camera/app/ui/shortcut/ShortcutItem$OnValueChangeListener;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;->mOnValueChangeListener:Lcom/transsion/camera/app/ui/shortcut/ShortcutItem$OnValueChangeListener;

    return-void
.end method
