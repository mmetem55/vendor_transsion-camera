.class Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;
.super Ljava/lang/Object;
.source "SuperDefinitionSettingUISpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Info"
.end annotation


# instance fields
.field private mBillionDrawable:Landroid/graphics/drawable/Drawable;

.field private final mBillionDrawableId:I

.field private final mBillionValue:I

.field private mMultiOffDrawable:Landroid/graphics/drawable/Drawable;

.field private final mMultiOffDrawableId:I

.field private mOnDrawable:Landroid/graphics/drawable/Drawable;

.field private final mOnDrawableId:I

.field private final mOnValue:I

.field private mSingleOffDrawable:Landroid/graphics/drawable/Drawable;

.field private final mSingleOffDrawableId:I


# direct methods
.method constructor <init>(IIIIII)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mOnValue:I

    .line 60
    iput p2, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mBillionValue:I

    .line 61
    iput p3, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mSingleOffDrawableId:I

    .line 62
    iput p4, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mMultiOffDrawableId:I

    .line 63
    iput p5, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mOnDrawableId:I

    .line 64
    iput p6, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mBillionDrawableId:I

    return-void
.end method


# virtual methods
.method public getBillionDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mBillionDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getMPValue(Ljava/lang/String;)I
    .locals 1

    const-string v0, "on"

    .line 103
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mOnValue:I

    return p0

    :cond_0
    const-string v0, "billion"

    .line 105
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 106
    iget p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mBillionValue:I

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getMultiOffDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mMultiOffDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getOnDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getSingleOffDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mSingleOffDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public loadDrawable(Landroid/content/res/Resources;)V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 69
    iget v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mOnDrawableId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mSingleOffDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 72
    iget v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mSingleOffDrawableId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mSingleOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    :cond_1
    iget v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mMultiOffDrawableId:I

    if-nez v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mSingleOffDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mMultiOffDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mMultiOffDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mMultiOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mBillionDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 82
    iget v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mBillionDrawableId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mBillionDrawable:Landroid/graphics/drawable/Drawable;

    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Info: OnValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mOnValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", BillionValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->mBillionValue:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
