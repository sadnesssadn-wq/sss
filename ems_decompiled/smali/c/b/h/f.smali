.class public Lc/b/h/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field public final synthetic a:Lcom/emsportal/activity/FilterStatiticsActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/activity/FilterStatiticsActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/h/f;->a:Lcom/emsportal/activity/FilterStatiticsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 0

    iget-object p1, p0, Lc/b/h/f;->a:Lcom/emsportal/activity/FilterStatiticsActivity;

    .line 1
    iput p2, p1, Lcom/emsportal/activity/FilterStatiticsActivity;->m:I

    add-int/lit8 p2, p3, 0x1

    .line 2
    iput p2, p1, Lcom/emsportal/activity/FilterStatiticsActivity;->n:I

    .line 3
    iput p4, p1, Lcom/emsportal/activity/FilterStatiticsActivity;->o:I

    const/16 p2, 0xa

    const-string p4, "/"

    if-lt p3, p2, :cond_0

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lc/b/h/f;->a:Lcom/emsportal/activity/FilterStatiticsActivity;

    .line 5
    iget p3, p3, Lcom/emsportal/activity/FilterStatiticsActivity;->o:I

    .line 6
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lc/b/h/f;->a:Lcom/emsportal/activity/FilterStatiticsActivity;

    .line 7
    iget p3, p3, Lcom/emsportal/activity/FilterStatiticsActivity;->o:I

    .line 8
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "/0"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object p3, p0, Lc/b/h/f;->a:Lcom/emsportal/activity/FilterStatiticsActivity;

    .line 9
    iget p3, p3, Lcom/emsportal/activity/FilterStatiticsActivity;->n:I

    .line 10
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lc/b/h/f;->a:Lcom/emsportal/activity/FilterStatiticsActivity;

    .line 11
    iget p3, p3, Lcom/emsportal/activity/FilterStatiticsActivity;->m:I

    .line 12
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 13
    iput-object p2, p1, Lcom/emsportal/activity/FilterStatiticsActivity;->p:Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lc/b/h/f;->a:Lcom/emsportal/activity/FilterStatiticsActivity;

    .line 15
    iget-object p2, p1, Lcom/emsportal/activity/FilterStatiticsActivity;->q:Lc/b/m/d/m;

    .line 16
    iget-object p1, p1, Lcom/emsportal/activity/FilterStatiticsActivity;->p:Ljava/lang/String;

    .line 17
    invoke-virtual {p2, p1}, Lc/b/m/d/m;->y(Ljava/lang/String;)V

    iget-object p1, p0, Lc/b/h/f;->a:Lcom/emsportal/activity/FilterStatiticsActivity;

    const/4 p2, 0x0

    .line 18
    iget-object p3, p1, Lcom/emsportal/activity/FilterStatiticsActivity;->p:Ljava/lang/String;

    .line 19
    invoke-virtual {p1, p2, p3}, Lcom/emsportal/activity/FilterStatiticsActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
