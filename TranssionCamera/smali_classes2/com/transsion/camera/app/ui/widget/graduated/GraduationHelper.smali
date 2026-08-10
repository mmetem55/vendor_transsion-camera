.class public Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;
.super Ljava/lang/Object;
.source "GraduationHelper.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimDistanceThreshold:I

.field private mAnimTranslateMax:I

.field private mContentHeight:I

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mCursorMoveCount:I

.field private mCursorRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;",
            ">;"
        }
    .end annotation
.end field

.field private mCursorTitleDrawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mCursorTitleTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExceptedHeight:I

.field private mGraduationFactory:Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;

.field private mIndependentCursorIndexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPauseGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

.field private mPauseIndependentIndex:I

.field private mRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mCursorMoveCount:I

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mIndependentCursorIndexList:Ljava/util/List;

    .line 60
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mPauseGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mPauseIndependentIndex:I

    .line 65
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createFactory(Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;)Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;
    .locals 2

    .line 105
    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper$1;->$SwitchMap$com$transsion$camera$app$ui$widget$graduated$GraduationStyle:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 177
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!!! Not support style: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 173
    :pswitch_0
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto/16 :goto_0

    .line 169
    :pswitch_1
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto/16 :goto_0

    .line 165
    :pswitch_2
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomSuperMoonFactory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomSuperMoonFactory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto/16 :goto_0

    .line 161
    :pswitch_3
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PortraitBlurFactory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PortraitBlurFactory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto/16 :goto_0

    .line 157
    :pswitch_4
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max6000Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max6000Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto/16 :goto_0

    .line 153
    :pswitch_5
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max3000Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max3000Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto :goto_0

    .line 149
    :pswitch_6
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max2500Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max2500Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto :goto_0

    .line 145
    :pswitch_7
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max2000Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max2000Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto :goto_0

    .line 141
    :pswitch_8
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max1500Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max1500Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto :goto_0

    .line 137
    :pswitch_9
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max1000Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max1000Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto :goto_0

    .line 133
    :pswitch_a
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max6000Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max6000Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto :goto_0

    .line 129
    :pswitch_b
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max3000Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max3000Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto :goto_0

    .line 125
    :pswitch_c
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max2500Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max2500Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto :goto_0

    .line 121
    :pswitch_d
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max2000Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max2000Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto :goto_0

    .line 117
    :pswitch_e
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max1500Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max1500Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto :goto_0

    .line 113
    :pswitch_f
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max1000Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max1000Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto :goto_0

    .line 110
    :pswitch_10
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max800Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max800Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto :goto_0

    .line 107
    :pswitch_11
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max400Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max400Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createGraduations(Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;",
            ">;"
        }
    .end annotation

    .line 86
    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createGraduations style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->createFactory(Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;)Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mGraduationFactory:Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;

    .line 88
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mCursorMoveCount:I

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;->setCursorMoveCount(I)V

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mGraduationFactory:Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mIndependentCursorIndexList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;->setIndependentCursorIndexList(Ljava/util/List;)V

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mGraduationFactory:Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mCursorTitleTexts:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mCursorTitleDrawables:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;->setCursorTitleContents(Ljava/util/List;Ljava/util/List;)V

    .line 91
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mGraduationFactory:Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mPauseIndependentIndex:I

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;->setPauseIndependentIndex(I)V

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mGraduationFactory:Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;

    invoke-interface {p0, p2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;->createGraduations(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAnimDistanceThreshold()I
    .locals 0

    .line 216
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mAnimDistanceThreshold:I

    return p0
.end method

.method public getAnimTranslateMax()I
    .locals 0

    .line 208
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mAnimTranslateMax:I

    return p0
.end method

.method public getContentHeight()I
    .locals 0

    .line 192
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContentHeight:I

    return p0
.end method

.method public getContentWidth()I
    .locals 0

    .line 184
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContentWidth:I

    return p0
.end method

.method public getCursorRanges()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mCursorRanges:Ljava/util/List;

    return-object p0
.end method

.method public getExceptedHeight()I
    .locals 0

    .line 200
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mExceptedHeight:I

    return p0
.end method

.method public getPauseGraduation()Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mPauseGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    return-object p0
.end method

.method public getRanges()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mRanges:Ljava/util/List;

    return-object p0
.end method

.method public rotateIndicator(I)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mGraduationFactory:Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;->rotateIndicator(I)V

    return-void
.end method

.method public setAnimDistanceThreshold(I)V
    .locals 0

    .line 220
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mAnimDistanceThreshold:I

    return-void
.end method

.method public setAnimTranslateMax(I)V
    .locals 0

    .line 212
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mAnimTranslateMax:I

    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    .line 196
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContentHeight:I

    return-void
.end method

.method public setContentWidth(I)V
    .locals 0

    .line 188
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContentWidth:I

    return-void
.end method

.method public setCursorMoveCount(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mCursorMoveCount:I

    return-void
.end method

.method public setCursorRanges(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;",
            ">;)V"
        }
    .end annotation

    .line 232
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mCursorRanges:Ljava/util/List;

    return-void
.end method

.method public setCursorTitleContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mCursorTitleTexts:Ljava/util/List;

    .line 78
    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mCursorTitleDrawables:Ljava/util/List;

    return-void
.end method

.method public setExceptedHeight(I)V
    .locals 0

    .line 204
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mExceptedHeight:I

    return-void
.end method

.method public setIndependentCursorIndexList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mIndependentCursorIndexList:Ljava/util/List;

    return-void
.end method

.method public setPauseGraduation(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mPauseGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    return-void
.end method

.method public setPauseIndependentIndex(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mPauseIndependentIndex:I

    return-void
.end method

.method public setRanges(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;",
            ">;)V"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mRanges:Ljava/util/List;

    return-void
.end method
