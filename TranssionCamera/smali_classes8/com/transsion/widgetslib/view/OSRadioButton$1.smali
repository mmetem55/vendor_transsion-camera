.class Lcom/transsion/widgetslib/view/OSRadioButton$1;
.super Ljava/lang/Object;
.source "OSRadioButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/OSRadioButton;->init(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/OSRadioButton;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/OSRadioButton;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton$1;->this$0:Lcom/transsion/widgetslib/view/OSRadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 74
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSRadioButton$1;->this$0:Lcom/transsion/widgetslib/view/OSRadioButton;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/view/OSRadioButton;->access$002(Lcom/transsion/widgetslib/view/OSRadioButton;Z)Z

    return-void
.end method
