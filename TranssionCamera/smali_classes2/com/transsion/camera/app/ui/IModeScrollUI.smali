.class public interface abstract Lcom/transsion/camera/app/ui/IModeScrollUI;
.super Ljava/lang/Object;
.source "IModeScrollUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;
    }
.end annotation


# virtual methods
.method public abstract hide(Z)V
.end method

.method public abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract setModeList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setScrollListener(Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;)V
.end method

.method public abstract showMode(Ljava/lang/String;)V
.end method

.method public abstract updateCurrentCamera(Ljava/lang/String;)V
.end method

.method public abstract updateSelectedMode(Ljava/lang/String;)V
.end method
