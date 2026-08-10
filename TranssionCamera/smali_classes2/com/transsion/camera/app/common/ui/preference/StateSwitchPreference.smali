.class public Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "StateSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference$OnCheckChangedListener;
    }
.end annotation


# instance fields
.field private mEntryDrawables:[Landroid/graphics/drawable/Drawable;

.field private mOnCheckChangedListener:Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference$OnCheckChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getEntryDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;->mOnCheckChangedListener:Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference$OnCheckChangedListener;

    if-eqz p0, :cond_0

    .line 42
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference$OnCheckChangedListener;->onCheckChanged(Z)V

    :cond_0
    return-void
.end method

.method public setEntryDrawables([Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOnCheckChangedListener(Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference$OnCheckChangedListener;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;->mOnCheckChangedListener:Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference$OnCheckChangedListener;

    return-void
.end method
