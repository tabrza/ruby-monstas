class Email
  def initialize(subject, header)
    @subject = subject
    @header = header
  end

  def subject
    @subject
  end

  def date
    @header[:date]
  end

  def from
    @header[:from]
  end
end

class Mailbox
  def initialize(subject, emails)
    @subject = subject
    @emails = emails
  end

  def subject
    @subject
  end

  def emails
    @emails
  end
end

class MailboxTextFormatter
  def initialize(mailbox)
    @mailbox = mailbox
  end

  def format
    lines = [
      separator,
      format_row(["Date", "Format", "Subject"]),
      separator,
      rows.collect { |row| format_row(row) },
      separator
    ]
    lines.join("\n")
  end

  def separator
    "+#{columns_widths.map { |width| '-' * (width + 2)}.join("+")}+"
  end

  def format_row(row)
    cells = 0.upto(row.length - 1).map do |i|
      row[i].ljust(columns_widths[i])
    end
    "| #{cells.join(" | ")} |"
  end

  def emails
    @mailbox.emails
  end

  def columns_widths
    columns.map { |column| column.max_by { |cell| cell.length }.length }
  end

  def columns
    rows.transpose
  end

  def rows
    emails.map { |email| [email.date, email.from, email.subject] }
  end
end

emails = [
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
  Email.new("Keep on coding!", { :date => "2014-12-01", :from => "Dajana" }),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Arienne" })
]

mailbox = Mailbox.new("Ruby Study Group", emails)
formatter = MailboxTextFormatter.new(mailbox)

puts formatter.format
