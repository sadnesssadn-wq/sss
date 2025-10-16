.class public Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;
.super Landroid/app/TimePickerDialog;
.source ""


# instance fields
.field private currentHour:I

.field private currentMinute:I

.field private maxHour:I

.field private maxMinute:I

.field private minHour:I

.field private minMinute:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;->minHour:I

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;->minMinute:I

    const/16 p1, 0x64

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;->maxHour:I

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;->maxMinute:I

    iput p3, p0, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;->currentHour:I

    iput p4, p0, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;->currentMinute:I

    return-void
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/TimePickerDialog;->onTimeChanged(Landroid/widget/TimePicker;II)V

    iget p1, p0, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;->minHour:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge p2, p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-ne p2, p1, :cond_2

    iget p1, p0, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;->minMinute:I

    if-lt p3, p1, :cond_0

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;->maxHour:I

    if-ne p2, p1, :cond_3

    iget p1, p0, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;->maxMinute:I

    if-gt p3, p1, :cond_0

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    iput p2, p0, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;->currentHour:I

    iput p3, p0, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;->currentMinute:I

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;->currentHour:I

    iget p2, p0, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;->currentMinute:I

    invoke-virtual {p0, p1, p2}, Landroid/app/TimePickerDialog;->updateTime(II)V

    :goto_1
    return-void
.end method

.method public setMax(II)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;->maxHour:I

    iput p2, p0, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;->maxMinute:I

    return-void
.end method

.method public setMin(II)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;->minHour:I

    iput p2, p0, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;->minMinute:I

    return-void
.end method
