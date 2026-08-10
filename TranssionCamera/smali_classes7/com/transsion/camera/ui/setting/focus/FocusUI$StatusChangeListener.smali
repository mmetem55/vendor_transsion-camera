.class Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;
.super Ljava/lang/Object;
.source "FocusUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/focus/FocusUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;


# direct methods
.method public static synthetic $r8$lambda$SiAp1BEkMegw5GD4_64uK8217K0(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->lambda$onStatusChanged$0(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V
    .locals 0

    .line 922
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;Lcom/transsion/camera/ui/setting/focus/FocusUI$1;)V
    .locals 0

    .line 922
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    return-void
.end method

.method private static synthetic lambda$onStatusChanged$0(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V
    .locals 0

    .line 988
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1100(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 922
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 925
    invoke-static {}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusChangeListener : key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 926
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "key_human_view_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "key_adjust_ui_show_and_hide_ae_lock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "key_face_view_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "key_animal_eye_view_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "key_dual_cam_split_style"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "key_eye_view_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "key_restrict_area"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v3, v1

    goto :goto_0

    :sswitch_7
    const-string v0, "key_video_frame"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    move v3, v2

    :goto_0
    const-string p1, "off"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 961
    :pswitch_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1602(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z

    .line 962
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1, v2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1702(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z

    .line 964
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1100(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    .line 965
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1200(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    .line 967
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1800(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    goto/16 :goto_3

    :pswitch_1
    const-string p1, "show_face_view"

    .line 928
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 929
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1100(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    .line 930
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1200(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    .line 931
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1302(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z

    goto/16 :goto_3

    :cond_8
    const-string p1, "hide_face_view"

    .line 932
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 933
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0, v2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1302(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z

    goto/16 :goto_3

    .line 954
    :pswitch_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1, v2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1502(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z

    const-string p1, "up_down"

    .line 955
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 956
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1502(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z

    goto/16 :goto_3

    :pswitch_3
    const-string p1, "show_eye_view"

    .line 940
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "show_human_view"

    .line 941
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "show_animal_eye_view"

    .line 942
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    const-string p1, "hide_eye_view"

    .line 946
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "hide_human_view"

    .line 947
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "hide_animal_eye_view"

    .line 948
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 949
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0, v2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1402(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z

    goto/16 :goto_3

    .line 943
    :cond_b
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1100(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    .line 944
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1200(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    .line 945
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1402(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z

    goto :goto_3

    .line 980
    :pswitch_4
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 981
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$2200(Lcom/transsion/camera/ui/setting/focus/FocusUI;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1902(Lcom/transsion/camera/ui/setting/focus/FocusUI;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 982
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1900(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$2102(Lcom/transsion/camera/ui/setting/focus/FocusUI;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    goto :goto_2

    .line 984
    :cond_c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$2000(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1902(Lcom/transsion/camera/ui/setting/focus/FocusUI;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 986
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1800(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    .line 987
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1900(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->updateRestrictRect(Landroid/graphics/Rect;)V

    .line 988
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$600(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    new-instance p2, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 971
    :pswitch_5
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 972
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$2000(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1902(Lcom/transsion/camera/ui/setting/focus/FocusUI;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 973
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1900(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->updateRestrictRect(Landroid/graphics/Rect;)V

    :cond_d
    const-string p1, "on"

    .line 975
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$2100(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 976
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$2100(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->updateRestrictRect(Landroid/graphics/Rect;)V

    :cond_e
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c110137 -> :sswitch_7
        -0x4ac57db0 -> :sswitch_6
        -0x45d154db -> :sswitch_5
        -0x27fb6c07 -> :sswitch_4
        -0x217cd3f8 -> :sswitch_3
        -0x184ac447 -> :sswitch_2
        0x1afcda38 -> :sswitch_1
        0x411ae6a9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
