.class Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;
.super Landroid/os/Handler;
.source "AbstractPreviewUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractPreviewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# static fields
.field private static final TAG_UI:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mPreviewUIReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/app/ui/AbstractPreviewUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1086
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PreviewUIHandler"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;->TAG_UI:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 1

    .line 1089
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1090
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;->mPreviewUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1095
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;->mPreviewUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    if-nez p0, :cond_0

    .line 1097
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;->TAG_UI:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage previewUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1100
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;->TAG_UI:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UIHandler handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1101
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$1200(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;

    move-result-object v0

    .line 1102
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$1300(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;

    move-result-object v1

    .line 1103
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$1400(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z

    move-result v2

    .line 1104
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$1500(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z

    move-result v3

    .line 1105
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 1166
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2500(Lcom/transsion/camera/app/ui/AbstractPreviewUI;II)V

    goto/16 :goto_0

    :pswitch_1
    if-nez v3, :cond_1

    const/4 p1, 0x1

    .line 1152
    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2400(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Z)V

    if-eqz v1, :cond_9

    .line 1153
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    .line 1154
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$1800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    .line 1155
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2000(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    goto/16 :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1158
    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2400(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Z)V

    if-eqz v0, :cond_9

    .line 1159
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    .line 1160
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$1900(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    .line 1161
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2100(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    goto/16 :goto_0

    .line 1148
    :pswitch_2
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2300(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    goto/16 :goto_0

    .line 1145
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2200(Lcom/transsion/camera/app/ui/AbstractPreviewUI;II)V

    goto/16 :goto_0

    .line 1110
    :pswitch_4
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$1700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v1, :cond_2

    .line 1111
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 1112
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$1800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    :cond_2
    if-eqz v0, :cond_9

    .line 1114
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    .line 1115
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$1900(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    goto :goto_0

    :cond_3
    if-nez v2, :cond_5

    if-eqz v1, :cond_4

    .line 1120
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 1121
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$1800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    :cond_4
    if-eqz v0, :cond_9

    .line 1123
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    .line 1124
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$1900(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_7

    if-eqz v1, :cond_6

    .line 1128
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 1129
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$1800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    :cond_6
    if-eqz v0, :cond_9

    .line 1131
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_9

    .line 1132
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2000(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_8

    .line 1135
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    .line 1136
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$1900(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    :cond_8
    if-eqz v1, :cond_9

    .line 1138
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_9

    .line 1139
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2100(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    goto :goto_0

    .line 1107
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$1600(Lcom/transsion/camera/app/ui/AbstractPreviewUI;II)V

    :cond_9
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
