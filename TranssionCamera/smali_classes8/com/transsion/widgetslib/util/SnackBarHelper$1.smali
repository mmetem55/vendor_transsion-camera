.class Lcom/transsion/widgetslib/util/SnackBarHelper$1;
.super Ljava/lang/Object;
.source "SnackBarHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/util/SnackBarHelper;->setUnDo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/util/SnackBarHelper;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/util/SnackBarHelper;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/transsion/widgetslib/util/SnackBarHelper$1;->this$0:Lcom/transsion/widgetslib/util/SnackBarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 123
    iget-object p1, p0, Lcom/transsion/widgetslib/util/SnackBarHelper$1;->this$0:Lcom/transsion/widgetslib/util/SnackBarHelper;

    invoke-static {p1}, Lcom/transsion/widgetslib/util/SnackBarHelper;->access$000(Lcom/transsion/widgetslib/util/SnackBarHelper;)Lcom/transsion/widgetslib/util/SnackBarHelper$ActionOnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 124
    iget-object p0, p0, Lcom/transsion/widgetslib/util/SnackBarHelper$1;->this$0:Lcom/transsion/widgetslib/util/SnackBarHelper;

    invoke-static {p0}, Lcom/transsion/widgetslib/util/SnackBarHelper;->access$000(Lcom/transsion/widgetslib/util/SnackBarHelper;)Lcom/transsion/widgetslib/util/SnackBarHelper$ActionOnClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/widgetslib/util/SnackBarHelper$ActionOnClickListener;->onClick()V

    :cond_0
    return-void
.end method
