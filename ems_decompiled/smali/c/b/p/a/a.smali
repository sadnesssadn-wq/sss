.class public Lc/b/p/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field public final synthetic a:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/p/a/a;->a:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2

    iget-object p1, p0, Lc/b/p/a/a;->a:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;

    .line 1
    iget v0, p1, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->p:I

    const v1, 0x7f10027e

    if-ge p2, v0, :cond_0

    .line 2
    iget-object p1, p1, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->n:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;

    .line 3
    invoke-static {p1, v1}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    .line 4
    :cond_0
    iget v0, p1, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->q:I

    if-ge p3, v0, :cond_1

    .line 5
    iget-object p1, p1, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->n:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;

    .line 6
    invoke-static {p1, v1}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lc/b/p/a/a;->a:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;

    const-string v0, ":"

    invoke-static {p1, v0, p2}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iput-object p1, p3, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->o:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lc/b/p/a/a;->a:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;

    .line 9
    iget-object p2, p1, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->k:Landroid/widget/TextView;

    .line 10
    iget-object p1, p1, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->o:Ljava/lang/String;

    .line 11
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
