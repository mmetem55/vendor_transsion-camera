.class public Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;
.super Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;
.source "EffectButtonItem.java"


# instance fields
.field private children:[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

.field private enableMultiSelect:Z

.field private enableNegative:Z

.field private id:I

.field private mCurrentIntensity:I

.field private node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

.field private parent:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

.field private reuseChildrenIntensity:Z

.field private selectChild:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

.field private selected:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    .line 15
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 16
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    .line 51
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p3, p2, v0}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;-><init>(III)V

    .line 10
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    .line 15
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 16
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    .line 69
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 80
    invoke-direct {p0, p3, p2, p4}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;-><init>(III)V

    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    const/4 p3, 0x1

    .line 14
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    .line 15
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 16
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    .line 81
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    return-void
.end method

.method public constructor <init>(IIIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V
    .locals 0

    .line 91
    invoke-direct {p0, p3, p2, p4}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;-><init>(III)V

    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    const/4 p3, 0x1

    .line 14
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    .line 15
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 16
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    .line 92
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    .line 93
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    return-void
.end method

.method public constructor <init>(IIIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;Z)V
    .locals 0

    .line 103
    invoke-direct {p0, p3, p2, p4}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;-><init>(III)V

    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    .line 15
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    const/4 p2, 0x0

    .line 16
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    .line 104
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    .line 105
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    .line 106
    iput-boolean p6, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    return-void
.end method

.method public constructor <init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p3, p2, v0}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;-><init>(III)V

    .line 10
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    .line 15
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 16
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    .line 86
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    .line 87
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    return-void
.end method

.method public constructor <init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;[F)V
    .locals 0

    const/4 p5, 0x0

    .line 97
    invoke-direct {p0, p3, p2, p5}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;-><init>(III)V

    .line 10
    iput-boolean p5, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    .line 15
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 16
    iput-boolean p5, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    .line 98
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    .line 99
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    return-void
.end method

.method public constructor <init>(III[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p3, p2, v0}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;-><init>(III)V

    .line 10
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    .line 15
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 16
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    .line 74
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    .line 75
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->children:[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    .line 76
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->updateChildren()V

    return-void
.end method

.method public constructor <init>(III[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p3, p2, v0}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;-><init>(III)V

    .line 10
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 16
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    .line 111
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    .line 112
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->children:[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    .line 113
    iput-boolean p5, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    .line 114
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->updateChildren()V

    return-void
.end method

.method public constructor <init>(I[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    .line 15
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 16
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    .line 55
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    .line 56
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->children:[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    .line 57
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->updateChildren()V

    return-void
.end method

.method public constructor <init>(I[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;Z)V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 16
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    .line 61
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    .line 62
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->children:[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    .line 63
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    .line 64
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->updateChildren()V

    return-void
.end method

.method private updateChildren()V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->children:[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 134
    iput-object p0, v3, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->parent:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public currentIntensity()I
    .locals 0

    .line 33
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->mCurrentIntensity:I

    return p0
.end method

.method public currentIntensity(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->mCurrentIntensity:I

    return-void
.end method

.method public getAvailableItem()Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->children:[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    if-nez v0, :cond_0

    move-object p0, v1

    :cond_0
    return-object p0

    .line 129
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selectChild:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getAvailableItem()Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getChildren()[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->children:[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 139
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    return p0
.end method

.method public getIntensityArray()[F
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [F

    return-object p0

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getIntensityArray()[F

    move-result-object p0

    return-object p0
.end method

.method public getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    return-object p0
.end method

.method public getParent()Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->parent:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    return-object p0
.end method

.method public getSelectChild()Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selectChild:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    return-object p0
.end method

.method public getValidIntensity()[F
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selectChild:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    if-nez v0, :cond_1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [F

    return-object p0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getIntensityArray()[F

    move-result-object p0

    return-object p0

    .line 122
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getValidIntensity()[F

    move-result-object p0

    return-object p0
.end method

.method public intensityDefault()Z
    .locals 3

    .line 37
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    const/4 v1, 0x1

    const/high16 v2, 0x60000

    if-eq v2, v0, :cond_0

    return v1

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    if-nez v0, :cond_1

    return v1

    .line 43
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getIntensityArray()[F

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 47
    :cond_2
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->mCurrentIntensity:I

    aget v0, v0, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEnableMultiSelect()Z
    .locals 0

    .line 198
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    return p0
.end method

.method public isEnableNegative()Z
    .locals 0

    .line 174
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    return p0
.end method

.method public isReuseChildrenIntensity()Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    return p0
.end method

.method public isSelected()Z
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getAvailableItem()Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getAvailableItem()Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setChildren([Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->children:[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    return-void
.end method

.method public setEnableMultiSelect(Z)V
    .locals 0

    .line 202
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    return-void
.end method

.method public setEnableNegative(Z)V
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 143
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    return-void
.end method

.method public setIntensityArray([F)V
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    if-nez p0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->setIntensityArray([F)V

    return-void
.end method

.method public setNode(Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    return-void
.end method

.method public setParent(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->parent:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    return-void
.end method

.method public setReuseChildrenIntensity(Z)V
    .locals 0

    .line 210
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    return-void
.end method

.method public setSelectChild(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selectChild:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    return-void
.end method
