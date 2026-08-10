.class public interface abstract Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;
.super Ljava/lang/Object;
.source "IGraduationFactory.java"


# virtual methods
.method public abstract createGraduations(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract rotateIndicator(I)V
.end method

.method public abstract setCursorMoveCount(I)V
.end method

.method public abstract setCursorTitleContents(Ljava/util/List;Ljava/util/List;)V
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
.end method

.method public abstract setIndependentCursorIndexList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPauseIndependentIndex(I)V
.end method
