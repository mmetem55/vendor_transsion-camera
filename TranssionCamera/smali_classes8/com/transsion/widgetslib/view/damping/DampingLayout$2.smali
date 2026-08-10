.class Lcom/transsion/widgetslib/view/damping/DampingLayout$2;
.super Ljava/lang/Object;
.source "DampingLayout.java"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/DampingLayout;->initUpOverScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$2;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverScrollUpdated(F)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$2;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$100(Lcom/transsion/widgetslib/view/damping/DampingLayout;F)V

    return-void
.end method
