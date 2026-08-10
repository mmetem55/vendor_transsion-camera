.class public Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;
.super Ljava/lang/Object;
.source "ReverseDrawableBean.java"


# instance fields
.field private mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mStateListDrawable:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    return-object p0
.end method

.method public getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    return-object p0
.end method

.method public getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->mStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method public setCheckedDrawable(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    return-void
.end method

.method public setNormalDrawable(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    return-void
.end method

.method public setStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->mStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-void
.end method
