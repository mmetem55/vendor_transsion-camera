.class public Lcom/transsion/camera/app/ui/ShutterUI;
.super Lcom/transsion/camera/app/ui/AbstractShutterUI;
.source "ShutterUI.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;)V

    return-void
.end method


# virtual methods
.method protected getUISpecFromType(I)Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;
    .locals 9

    .line 28
    new-instance p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;-><init>()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/16 v0, 0x11

    const v1, 0x7f080837

    if-eq p1, v0, :cond_4

    const/16 v0, 0x271e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x271f

    if-eq p1, v0, :cond_2

    const v0, 0x7f080831

    const v2, 0x7f080bc5

    const v3, 0x7f080bbb

    const v4, 0x7f080833

    const v5, 0x7f08083c

    packed-switch p1, :pswitch_data_0

    const v1, 0x7f080bc6

    const v5, 0x7f080bbc

    const v6, 0x7f080834

    const v7, 0x7f080832

    packed-switch p1, :pswitch_data_1

    const v8, 0x7f08083d

    packed-switch p1, :pswitch_data_2

    .line 196
    iput v0, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    .line 197
    iput v4, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleSmallDrawableId:I

    .line 198
    iput v3, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    .line 199
    iput v2, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    const p1, 0x7f080835

    .line 200
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080baf

    .line 201
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const p1, 0x7f080bb9

    .line 202
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    goto/16 :goto_2

    .line 154
    :pswitch_0
    iput v8, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    .line 155
    iput v8, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080bd4

    .line 156
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    goto/16 :goto_2

    .line 144
    :pswitch_1
    iput v8, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    .line 145
    iput v8, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080bd6

    .line 146
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    goto/16 :goto_2

    .line 133
    :pswitch_2
    iput v8, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    const p1, 0x7f08083f

    .line 134
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080bd8

    .line 135
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const p1, 0x7f080be4

    .line 136
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    goto/16 :goto_2

    :pswitch_3
    const v0, 0x7f080826

    .line 65
    iput v0, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    const v0, 0x7f080828

    .line 66
    iput v0, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleSmallDrawableId:I

    const v0, 0x7f080b8e

    .line 67
    iput v0, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const/16 v0, 0x2716

    if-ne p1, v0, :cond_0

    const p1, 0x7f080823

    .line 69
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080b8a

    .line 70
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    goto :goto_0

    :cond_0
    const p1, 0x7f080825

    .line 72
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080b8c

    .line 73
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    :goto_0
    const p1, 0x7f0804f8

    .line 75
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    const p1, 0x7f0804fa

    .line 76
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    goto/16 :goto_2

    .line 118
    :pswitch_4
    iput v7, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    .line 119
    iput v6, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleSmallDrawableId:I

    .line 120
    iput v5, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    .line 121
    iput v1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    const p1, 0x7f080842

    .line 122
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080bee

    .line 123
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const p1, 0x7f080bf2

    .line 124
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    goto/16 :goto_2

    .line 185
    :pswitch_5
    iput v7, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    .line 186
    iput v6, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleSmallDrawableId:I

    .line 187
    iput v5, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    .line 188
    iput v1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    const p1, 0x7f080836

    .line 189
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080bb0

    .line 190
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const p1, 0x7f080bba

    .line 191
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    goto/16 :goto_2

    :pswitch_6
    const p1, 0x7f080848

    .line 40
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    const p1, 0x7f08084c

    .line 41
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080c02

    .line 42
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const p1, 0x7f080c08

    .line 43
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    const p1, 0x7f08084a

    .line 44
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleSmallDrawableId:I

    const p1, 0x7f080c95

    .line 45
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    const p1, 0x7f080c97

    .line 46
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    goto/16 :goto_2

    .line 98
    :pswitch_7
    iput v7, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    .line 99
    iput v6, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleSmallDrawableId:I

    .line 100
    iput v5, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    .line 101
    iput v1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    const p1, 0x7f08081a

    .line 102
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080b82

    .line 103
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const p1, 0x7f080b86

    .line 104
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    goto/16 :goto_2

    :pswitch_8
    const p1, 0x7f080843

    .line 169
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    const p1, 0x7f080845

    .line 170
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080bff

    .line 171
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const p1, 0x7f080bf9

    .line 172
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    goto/16 :goto_2

    .line 166
    :pswitch_9
    iput v1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    goto/16 :goto_2

    .line 149
    :pswitch_a
    iput v5, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    .line 150
    iput v5, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080bd3

    .line 151
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    goto/16 :goto_2

    .line 139
    :pswitch_b
    iput v5, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    .line 140
    iput v5, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080bd5

    .line 141
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    goto/16 :goto_2

    .line 127
    :pswitch_c
    iput v5, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    const p1, 0x7f08083e

    .line 128
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080bd7

    .line 129
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const p1, 0x7f080be3

    .line 130
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    goto/16 :goto_2

    .line 88
    :pswitch_d
    iput v0, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    .line 89
    iput v4, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleSmallDrawableId:I

    .line 90
    iput v3, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    .line 91
    iput v2, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    const p1, 0x7f080819

    .line 92
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080b81

    .line 93
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const p1, 0x7f080b85

    .line 94
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    goto/16 :goto_2

    :pswitch_e
    const v0, 0x7f080821

    .line 50
    iput v0, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    const v0, 0x7f080827

    .line 51
    iput v0, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleSmallDrawableId:I

    const v0, 0x7f080b8d

    .line 52
    iput v0, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    const p1, 0x7f080822

    .line 54
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080b89

    .line 55
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    goto :goto_1

    :cond_1
    const p1, 0x7f080824

    .line 57
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080b8b

    .line 58
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    :goto_1
    const p1, 0x7f0804f7

    .line 60
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    const p1, 0x7f0804f9

    .line 61
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    goto/16 :goto_2

    .line 108
    :pswitch_f
    iput v0, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    .line 109
    iput v4, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleSmallDrawableId:I

    .line 110
    iput v3, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    .line 111
    iput v2, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    const p1, 0x7f080841

    .line 112
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080bed

    .line 113
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const p1, 0x7f080bf1

    .line 114
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    goto :goto_2

    :pswitch_10
    const p1, 0x7f08082a

    .line 79
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    .line 80
    iput v4, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleSmallDrawableId:I

    .line 81
    iput v3, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    .line 82
    iput v2, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    const p1, 0x7f08082b

    .line 83
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080b97

    .line 84
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const p1, 0x7f080b9c

    .line 85
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    goto :goto_2

    :cond_2
    :pswitch_11
    const p1, 0x7f080830

    .line 182
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    goto :goto_2

    :cond_3
    const p1, 0x7f080844

    .line 175
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    const p1, 0x7f080846

    .line 176
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080c00

    .line 177
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const p1, 0x7f080bfa

    .line 178
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    goto :goto_2

    .line 160
    :cond_4
    :pswitch_12
    iput v1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    const p1, 0x7f080b37

    .line 161
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    .line 162
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080b38

    .line 163
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    goto :goto_2

    :cond_5
    const p1, 0x7f080847

    .line 31
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    const p1, 0x7f08084b

    .line 32
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080c01

    .line 33
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const p1, 0x7f080c07

    .line 34
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    const p1, 0x7f080849

    .line 35
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleSmallDrawableId:I

    const p1, 0x7f080c94

    .line 36
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    const p1, 0x7f080c96

    .line 37
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_12
        :pswitch_9
        :pswitch_8
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2710
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2714
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
