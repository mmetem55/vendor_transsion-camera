.class public Lcom/transsion/camera/app/common/AppUIState;
.super Ljava/lang/Object;
.source "AppUIState.java"


# direct methods
.method public static stateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN STATE ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "state_voice"

    return-object p0

    :pswitch_1
    const-string p0, "state_gesture"

    return-object p0

    :pswitch_2
    const-string p0, "state_movie_recording"

    return-object p0

    :pswitch_3
    const-string p0, "state_smile"

    return-object p0

    :pswitch_4
    const-string p0, "state_continuous_shot"

    return-object p0

    :pswitch_5
    const-string p0, "state_saving"

    return-object p0

    :pswitch_6
    const-string p0, "state_processing"

    return-object p0

    :pswitch_7
    const-string p0, "state_idle"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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
